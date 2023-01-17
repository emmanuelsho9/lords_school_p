import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';

import '../constant/responsiveness.dart';
import '../model/provider/provider.dart';

class EventsPrograms extends StatelessWidget {
  const EventsPrograms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helperProvider = Provider.of<HelperProvider>(context, listen: false);
    final feeDueList = helperProvider.EventProgram;

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
            var arrow = feeDueList[index].Title;
            return Card(
              elevation: 7,
              shadowColor: Colors.black,
              margin: const EdgeInsets.only(top: 16, right: 16, left: 16),
              shape: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                       padding: const EdgeInsets.only(left: 14, right: 14, top: 12, bottom: 17),
                       child: Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("${feeDueList[index].Title}" ,style: TextStyle(fontStyle: FontStyle.italic,fontSize: 14, fontWeight: FontWeight.w400),
                               ),
                             ],
                           ),
                           const Gap(10),

                           Row(
                             children: [
                               Container(
                                   height: 75,
                                   width: 75,
                                   child: Image.asset("${feeDueList[index].img}", scale: 2, fit: BoxFit.cover,)),
                               const Gap(8),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Row(
                                     children: [
                                     const  Icon(Icons.timelapse_sharp, size: 17, color: Color(0xFF6789CA),),
                                       const Gap(6),
                                       Text("N${feeDueList[index].Time}",style: const
                                       TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, color:Color(0xFF6789CA) ),
                                       ),
                                     ],
                                   ),
                                   const Gap(4),
                                   Container(
                                     width: 226,
                                     child: Text(feeDueList[index].Details,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                 ],
                               ),
                             ],
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
      title: const Text("Events & Programs", style: TextStyle(
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
