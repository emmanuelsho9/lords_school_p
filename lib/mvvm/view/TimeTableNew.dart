import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';

import '../constant/responsiveness.dart';
import '../model/provider/provider.dart';

class TimeTableNew extends StatelessWidget {
  const TimeTableNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helperProvider = Provider.of<HelperProvider>(context, listen: false);
    final feeDueList = helperProvider.monClass;

  //  bool arrow = true;

    BottomSheet bottomSheet =BottomSheet(
      enableDrag: false,
      onClosing: () {  }, backgroundColor: Colorbackground,
      builder: (BuildContext context) {
        return  Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
                children: [
                  const Flexible(
                    flex: 2,
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1
                        )
                      ),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: TabBar(
                        indicator:BoxDecoration(
                      color: Color(0xFF6789CA),
                borderRadius: BorderRadius.circular(15)
        ),
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          TabAppBar(text: 'MON',),
                          TabAppBar(text: 'Tue',),
                          TabAppBar(text: 'Wed',),
                          TabAppBar(text: 'Thu',),
                          TabAppBar(text: 'Fri',),


                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 23,
                    child: TabBarView(children: [
                      Container(child:  ListView.builder(
                    itemCount: feeDueList.length,
                        itemBuilder: (context, index) =>
                         Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Card(
                               elevation: 3,
                               shape: UnderlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                               ),
                               margin: const EdgeInsets.only(top: 16, right: 16, left: 16),
                               child: Container(
                                 height: MediaQuery.of(context).size.height*0.17,
                                 padding: const EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                   children: [
                                     Row(

                                       children: [
                                         Text("${feeDueList[index].subj}".replaceAll("Subj.", ""),style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic,fontWeight: FontWeight.w100),
                                         ),
                                       ],
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text("${feeDueList[index].Time}"  ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                                         ),
                                       ],
                                     ),
                                     const Divider(
                                       thickness: 2,
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text("${feeDueList[index].TeacherName}" ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                         Text("Period ${feeDueList[index].numberOfPeriod}" ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                             ),


                           ],
                         ),
                      ),),
                      Text("Tue"),
                      Text("Wed"),
                      Text("Thu"),
                      Text("Mon"),

                    ]),
                  )
                ],
              ),


        );
      },

    );









    AppBar appBar = AppBar(
      backgroundColor: Colorbackground,
      toolbarHeight: 70,
      title: const Text("Timetable", style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400
      ),),
    );






    return  DefaultTabController(
      length: 5,
      child: responsiveness(
        body: Container(
          color: Colorbackground,
        ),
        backgroundColor: Colorbackground,
        bottomSheet: bottomSheet,
        appBar:appBar,
      ),
    );
  }
}

class TabAppBar extends StatelessWidget {
   TabAppBar({
    Key? key, required this.text,
  }) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
        width: 150,

        child: Center(child: Text(text, style: TextStyle(
          fontWeight: FontWeight.w100,
          fontSize: 16,
          fontStyle: FontStyle.italic
        ),)));
  }
}
