import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:table_calendar/table_calendar.dart';
import '../constant/colors.dart';

import '../constant/responsiveness.dart';
import '../model/provider/provider.dart';

class ATTENDANCEHOLIDAY extends StatelessWidget {
  const ATTENDANCEHOLIDAY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helperProvider = Provider.of<HelperProvider>(context, listen: false);
    final feeDueList = helperProvider.monClass;
    String dateSelected = "";



    //  bool arrow = true;

    CalendarFormat format = CalendarFormat.month;
    DateTime selectedDate = DateTime.now();
    DateTime focusDate = DateTime.now();

    BottomSheet bottomSheet =  BottomSheet(


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
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: TabBar(
                        indicator:BoxDecoration(
                      color: const Color(0xFF6789CA),
                borderRadius: BorderRadius.circular(15)
        ),
                        unselectedLabelColor: Colors.black,
                        tabs: [

                          TabAppBar(text: 'ATTENDANCE',),
                          TabAppBar(text: 'HOLIDAY',),


                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 23,
                    child: TabBarView(children: [

                      attendance(dateSelected.toString()),
                      holiday(),

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
      title: const Text("Attendance", style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400
      ),),
    );






    return  DefaultTabController(
      length: 2,
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

  Container holiday() {
    return Container(
                      child: Column(
                        children: [
                          Flexible(
                            child: StatefulBuilder(
                              builder: (context, setState) =>
                                  SfDateRangePicker(
                                    selectionMode: DateRangePickerSelectionMode.multiple,
                                    view: DateRangePickerView.month,
                                    initialSelectedDates: [
                                      DateTime.now().subtract(const Duration(days: 6)),
                                    ],
                                  ),
                            ),
                          ),
                          Flexible(child: Text("data")),
                          Text("data")

                        ],
                      ),
                    );
  }
  Container attendance( String dateE ) {

    return Container(
                      child: Column(
                        children: [
                          Flexible(
                            child: StatefulBuilder(
                              builder: (context, setState) =>
                                  SfDateRangePicker(
                                    selectionMode: DateRangePickerSelectionMode.multiple,
                                    view: DateRangePickerView.month,
                                    onSelectionChanged: (DateRangePickerSelectionChangedArgs dateRangePickerSelectionChangedArgs) {
                                      print(dateRangePickerSelectionChangedArgs.value);
                                      // var d = dateRangePickerSelectionChangedArgs.value;
                                      // dateE =d;
                                      // dateE =
                                      },
                                    initialSelectedDates: [
                                      DateTime.now().subtract(const Duration(days: 6)),
                                    ],
                                  ),
                            ),
                          ),
                          Flexible(child: Text(dateE))

                        ],
                      ),
                    );
  }


   _selectedChanhed(DateRangePickerSelectionChangedArgs dateSelectedNow, String dateNow) {
    return Text(dateSelectedNow.value);
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
