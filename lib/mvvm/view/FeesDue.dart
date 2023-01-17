import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';

import '../constant/responsiveness.dart';
import '../model/provider/provider.dart';

class FeesDue extends StatelessWidget {
  const FeesDue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helperProvider = Provider.of<HelperProvider>(context, listen: false);
    final feeDueList = helperProvider.Fee;

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
            var arrow = feeDueList[index].paynow;
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
                       padding: const EdgeInsets.only(left: 14, right: 14, top: 12),
                       child: Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const Text("Receipt No.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                               Text("#${feeDueList[index].ReceiptNo}"                            ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                               ),
                             ],
                           ),
                           const Divider(
                             thickness: 2,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const Text("Month",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                               Text("${feeDueList[index].date.month}"                            ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                               ),
                             ],
                           ),
                           const Divider(
                             thickness: 2,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const Text("Payment Date",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                               Text("${feeDueList[index].date}"                            ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                               ),
                             ],
                           ),
                           const Divider(
                             thickness: 2,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const Text("Total Pending Amount"
                                 ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                               ),
                               Text("N${feeDueList[index].TotalPendingAmount}"                            ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                            Text("${feeDueList[index].paynow}"  ,
                              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, fontWeight: FontWeight.w100, color: Colors.white),
                              
                           
                            ),
                           arrow==feeDueList[index].paynow?Icon(Icons.arrow_forward, color: Colors.white,):
                           Icon(Icons.download_outlined, color: Colors.white,)
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
      title: const Text("Fees Due", style: TextStyle(
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
