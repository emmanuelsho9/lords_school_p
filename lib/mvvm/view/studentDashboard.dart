import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lords_school_p/mvvm/model/class/SchoolGallery.dart';
import 'package:lords_school_p/mvvm/view/ATTENDANCEHOLIDAY.dart';
import 'package:lords_school_p/mvvm/view/AskDoubt.dart';
import 'package:lords_school_p/mvvm/view/ChangePassword.dart';
import 'package:lords_school_p/mvvm/view/EventsPrograms.dart';
import 'package:lords_school_p/mvvm/view/FeesDue.dart';
import 'package:lords_school_p/mvvm/view/LeaveApplication.dart';
import 'package:lords_school_p/mvvm/view/SchoolGallery.dart';
import 'package:lords_school_p/mvvm/view/TimeTableNew.dart';
import 'package:lords_school_p/mvvm/view/assignment.dart';
import 'package:lords_school_p/mvvm/view/onboardingScreen/result/result.dart';
import 'package:lords_school_p/mvvm/view/profile.dart';

import '../constant/colors.dart';
import '../constant/responsiveness.dart';
import '../constant/routesFile.dart';

class StudentsDashboard extends StatelessWidget {
   StudentsDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar =  AppBar(
      backgroundColor: Colorbackground,
      elevation: 0,
      leading: Text(""),
      actions: [
        Container(
          height: MediaQuery.of(context).size.height*0.03,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              const  Text("Hi Martins", style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Row(
                    children: const [
                      Text("Class: SSS1  |  Dept: ", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      Text("Humanities", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),

                    ],
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color:  const Color(0xFFCACACA),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white, width: 2)
                    ),
                    child: Center(child: InkWell(onTap: () {
                      Get.to(
                        Profile()
                      );
                    },child: Icon(Icons.person, color: Colorbackground, size: 40))),
                  ),
                 

                ],
              ),
              Container(
                width: 84,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("2021", style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic, color: Color(0xFF6184C7)),),
                    Text("-", style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic, color: Color(0xFF6184C7)),),
                    Text("2022", style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic, color: Color(0xFF6184C7)),),

                  ],
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.03,)

            ],
          ),
        ),


      ],
      toolbarHeight: MediaQuery.of(context).size.height*0.28,
      // leading: Container(
      //
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: const [
      //       Text("Hi Student", style: TextStyle(fontSize: 34,fontStyle: FontStyle.italic),),
      //     ],
      //   ),
      // ),
    );
    final BottomShee =  BottomSheet(
      backgroundColor: Colorbackground,
      enableDrag: false,
      onClosing: () {
        return null;
      }, builder: (context) {
      return bottomSContainer();
    },);





    return  responsiveness(
      backgroundColor: Colorbackground,
      appBar:appBar,
      bottomSheet: BottomShee,
    );
  }
}





class bottomSContainer extends StatelessWidget {
  const bottomSContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 164.88,
                    height: 201.28,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      border: Border.all(color:  Color(0xFF2C66D6), width: 1)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color:  const Color(0xFFFCF3E2),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.white, width: 2)
                          ),
                          child: Center(child: Image.asset("assets/img_7.png",scale: 2,)),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(ATTENDANCEHOLIDAY());

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("100", style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w400),),
                              Text("%", style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w400),),

                            ],
                          ),
                        ),
                        const Text("Attendance", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF6184C7)),),

                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(FeesDue());
                    },
                    child: Container(
                      width: 164.88,
                      height: 201.28,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        border: Border.all(color:  Color(0xFF2C66D6), width: 1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color:  const Color(0xFFFFD8FF),
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white, width: 2)
                            ),
                            child: Center(child: Image.asset("assets/img_8.png",scale: 2,)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("N", style: TextStyle(fontSize: 32, color: Colors.black, fontWeight: FontWeight.w400),),
                              Text("180,750", style: TextStyle(fontSize: 32, color: Colors.black, fontWeight: FontWeight.w400),),

                            ],
                          ),
                          const Text("Fees Due", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF6184C7)),),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(16),
              listOfItem(firstText: 'Play Quiz', firstImg: 'assets/img_11.png', secondText: 'Assignment', secondImg: 'assets/img_12.png', FirstonTap: () {

              }, SecondonTap: () {
                Get.to(Assignment());
              },),
              const Gap(16),
              listOfItem(firstText: 'School Holiday', firstImg: 'assets/img_9.png', secondText: 'Time Table', secondImg: 'assets/img_10.png', FirstonTap: () {
                Get.to(ATTENDANCEHOLIDAY());

              }, SecondonTap: () {
                Get.to(TimeTableNew());
              },),
              const Gap(16),
              listOfItem(firstText: 'Result', firstImg: 'assets/img_13.png', secondText: 'Events', secondImg: 'assets/img_21.png', FirstonTap: () {
                Get.to(Result());
              }, SecondonTap: () {
                Get.to(EventsPrograms());

              },),
              const Gap(16),
              listOfItem(firstText: 'Ask Doubt', firstImg: 'assets/img_17.png', secondText: 'School Gallery', secondImg: 'assets/img_18.png', FirstonTap: () {
                Get.to(AskDoubt());

              }, SecondonTap: () {
                Get.to(SchoolGallery());

              },),
              const Gap(16),
              listOfItem(firstText: 'Leave Application', firstImg: 'assets/img_19.png', secondText: 'Change Password', secondImg: 'assets/img_20.png', FirstonTap: () {

                Get.to(LeaveApplication());

              }, SecondonTap: () {
                Get.to(ChangePassword());

              },),




            ],
          ),
        ),
      ),
    );
  }
}

class listOfItem extends StatelessWidget {
   listOfItem({
    Key? key,
     required this.firstText,
     required this.secondText,
     required this.firstImg,
     required this.secondImg,
     required this.FirstonTap,
     required this.SecondonTap,
  }) : super(key: key);

  String firstText;
  String secondText;
  String secondImg;
  String firstImg;
  Function()? FirstonTap;
  Function()? SecondonTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(onTap: FirstonTap,child: ContainerForSchoolHoliday(text: firstText, img: firstImg,)),
        InkWell(onTap: SecondonTap,child: ContainerForSchoolHoliday(text: secondText, img: secondImg,)),
      ],
    );
  }
}

class ContainerForSchoolHoliday extends StatelessWidget {
   ContainerForSchoolHoliday({
    Key? key,
     required this.text,
     required this.img,
  }) : super(key: key);

  String text;
  String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164.88,
      height: 131.53,
      padding: const EdgeInsets.symmetric( vertical: 30),
      decoration: BoxDecoration(
          color: const Color(0xFFF5F6FC),
          borderRadius: BorderRadius.circular(20),
      ),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(img,scale: 2,),
            ],
          ),
          Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF6184C7)),),

        ],
      ),
    );
  }
}


