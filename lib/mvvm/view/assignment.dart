import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';

import '../constant/responsiveness.dart';
import '../model/provider/provider.dart';

class Assignment extends StatelessWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helperProvider = Provider.of<HelperProvider>(context, listen: false);
    final feeDueList = helperProvider.assign;

  //  bool arrow = true;

    BottomSheet bottomSheet =BottomSheet(
      enableDrag: false,
      onClosing: () {  }, backgroundColor: Colorbackground,
      builder: (BuildContext context) {
        return  Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: ListView.builder(itemCount: feeDueList.length, itemBuilder: (context, index) {
            var arrow = feeDueList[index].subj;
            return Card(
              elevation: 7,
              shadowColor: Colors.black,
              margin: const EdgeInsets.only(top: 16, right: 16, left: 16),
              shape: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                  height: 209,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                       height: MediaQuery.of(context).size.height*0.17,
                         padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,

                         children: [
                           Row(

                             children: [
                               Container(
                                 height: 23,
                                 width: 98,
                                 decoration: BoxDecoration(
                                   color: Color(0xFFE6EFFF),
                                   borderRadius: BorderRadius.circular(15)
                                 ),
                                 child: Center(
                                   child: Text("${feeDueList[index].subj}".replaceAll("Subject.", ""),style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           Row(
                             children: [
                               const Text("Indicies",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const Text("Assign Date",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                               Text("${feeDueList[index].LastSubmissionDate}"  ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                               ),
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const Text("Last Submission Date",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                               Text("${feeDueList[index]}"                            ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),

                      

                      Container(
                        height: 45,
                        padding: EdgeInsets.only(left: 14, right: 14, ),

                        width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colorbackground,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${feeDueList[index].TOBESUBMITTED}"  ,
                              style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),


                            ),
                          ],
                        ),
                      ),


                    ],
                  )),
            );
          },),
        );
      },

    );









    AppBar appBar = AppBar(
      backgroundColor: Colorbackground,
      toolbarHeight: 70,
      title: const Text("Assignment", style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400
      ),),
    );






    return  responsiveness(
      body: Container(
        color: Colorbackground,
      ),
      backgroundColor: Colorbackground,
      bottomSheet: bottomSheet,
      appBar:appBar,
    );
  }
}
