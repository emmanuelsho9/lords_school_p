import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lords_school_p/mvvm/view/profile.dart';
import '../constant/colors.dart';

import '../constant/responsiveness.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return  responsiveness(
      backgroundColor: Colorbackground,

      body: Column(
        children: [
        Container(
            height: MediaQuery.of(context).size.height*0.1,
            child: appBar()),
          Container(
            height: MediaQuery.of(context).size.height*0.9,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                color: Colors.white
            ),
            child: bottomSContainer(),

          ),
        ],
      ),
    );
  }
}

class appBar extends StatelessWidget {
  const appBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colorbackground,
      elevation: 0,
      centerTitle: true,
      title: Text("Create Your Profile Profile"),
      toolbarHeight: MediaQuery.of(context).size.height*0.12,
      leading: Container(),

    );
  }
}



class bottomSContainer extends StatefulWidget {
  const bottomSContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<bottomSContainer> createState() => _bottomSContainerState();
}

class _bottomSContainerState extends State<bottomSContainer> {
  @override
  Widget build(BuildContext context) {
    DateTime _academicDate = DateTime.now();
    DateTime _dateOfBirthDate = DateTime.now();
    DateTime _dateOfAdminDate = DateTime.now();
    bool offObsc = false;

    var imageSelected;
    Future getImage() async {
      final ImagePicker _picker = ImagePicker();

      final Pickedimage = await _picker.pickImage(source: ImageSource.gallery);

      setState(() {
        imageSelected = Pickedimage as File;
      });
    }




    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width*1.0,
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
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.only(left: 11, right: 11, top: 11, bottom: 11),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color(0xFF5278C1),
                        width: 1
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // child: imageSelected==true?Text("data"):Image.file(File(imageSelected)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Martins, Temitope", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Colors.black),),
                        Row(
                          children: const [
                            Text("Class:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
                            Text("SSS 1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Term: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
                            Text("1st", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
                          ],
                        ),
                      ],
                    ),
                    StatefulBuilder(
                      builder: (context, setState)
                      => Column(
                        children: [
                          IconButton(onPressed: () async {
                            getImage();

                          }, icon: const Icon(Icons.camera_alt_outlined, color: Colors.grey,)),
                        ],
                      ),)
                  ],
                ),
              ),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatefulBuilder(builder: (context, setState) =>  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Admission  No", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),

                      Container(
                          width: MediaQuery.of(context).size.width*0.40,
                          child: textFiedFor(enable: true,hintText: '0002021049', obscureText: false, keyboardType: TextInputType.phone,)),
                    ],
                  ),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Academic Year", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),

                      SizedBox(
                          width: MediaQuery.of(context).size.width*0.40,
                          child: StatefulBuilder(builder: (context, setState) =>
                              Container(
                                child: InkWell(
                                  onTap: () async {
                                    DateTime? dateTime = await showDatePicker(context: context,
                                        initialDate: _academicDate,
                                        firstDate: DateTime(1900),
                                        builder: (context, child) {
                                          return Theme(
                                            data: Theme.of(context).copyWith(
                                              colorScheme: const ColorScheme.light(
                                                primary: Color(0xFF7F23A8), // <-- SEE HERE
                                                onPrimary: Colors.white, // <-- SEE HERE
                                                onSurface: Color.fromARGB(255, 66, 125, 145), // <-- SEE HERE
                                              ),
                                              textButtonTheme: TextButtonThemeData(
                                                style: TextButton.styleFrom(
                                                  primary: Color(0xFF7F23A8), // button text color
                                                ),
                                              ),
                                            ),
                                            child: child!,
                                          );
                                        },
                                        lastDate: DateTime(3000));

                                    if(dateTime!=null){
                                      setState(() {

                                        _academicDate=dateTime;
                                      });
                                    }

                                  },
                                  child: textFiedFor(enable: offObsc, obscureText: false, icon: Icons.calendar_month, IcononPressed: () async {
                                  },keyboardType: TextInputType.phone,hintText: "${_academicDate.day}-${_academicDate.month}-${_academicDate.year}",
                                  ),
                                ),
                              ),)

                      ),
                    ],
                  ),
                ],
              ),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Date of Admission", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),

                      Container(
                          width: MediaQuery.of(context).size.width*0.40,
                          child: textFiedFor(hintText: '01 Apr 2018', icon: Icons.lock, obscureText: false, keyboardType: null,)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Date of Birth", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),

                      StatefulBuilder(builder: (context, setState) =>    SizedBox(
                          width: MediaQuery.of(context).size.width*0.40,
                          child: InkWell(
                            onTap: () async {
                              print("object");

                              DateTime? dateTime = await showDatePicker(context: context,
                                  initialDate: _dateOfBirthDate,
                                  firstDate: DateTime(1900),
                                  builder: (context, child) {
                                    return Theme(
                                      data: Theme.of(context).copyWith(
                                        colorScheme: const ColorScheme.light(
                                          primary: Color(0xFF7F23A8), // <-- SEE HERE
                                          onPrimary: Colors.white, // <-- SEE HERE
                                          onSurface: Color.fromARGB(255, 66, 125, 145), // <-- SEE HERE
                                        ),
                                        textButtonTheme: TextButtonThemeData(
                                          style: TextButton.styleFrom(
                                            primary: Color(0xFF7F23A8), // button text color
                                          ),
                                        ),
                                      ),
                                      child: child!,
                                    );
                                  },
                                  lastDate: DateTime(3000));

                              if(dateTime!=null){
                                setState(() {

                                  _dateOfBirthDate=dateTime;
                                });
                              }

                            },
                            child: textFiedFor(hintText: '${_dateOfBirthDate.day}-${_dateOfBirthDate.month}-${_dateOfBirthDate.year}', obscureText: true, icon: Icons.calendar_month, IcononPressed: () {

                            },keyboardType: TextInputType.phone,),
                          )),
                      )

                    ],
                  ),
                ],
              ),
              const Gap(34),
              Text("Parent e-mail", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
              const Gap(8),
              Container(
                  width: double.infinity,
                  child: textFiedFor(hintText: 'email', obscureText: false,keyboardType: TextInputType.emailAddress,enable: true,)),
              const Gap(34),
              Text("Mother Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
              const Gap(8),
              Container(
                  width: double.infinity,
                  child: textFiedFor(hintText: 'Motunrayo', obscureText: false, keyboardType: TextInputType.name,enable: true,)),
              const Gap(34),
              Text("Father Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
              const Gap(8),
              Container(
                  width: double.infinity,
                  child: textFiedFor(hintText: 'Segun', obscureText: false, keyboardType: TextInputType.name,enable: true,)),
              const Gap(34),
              const Text("Parmanent Add.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
              const Gap(8),
              Container(
                  width: double.infinity,
                  child: textFiedFor(hintText: 'Lagos, NIGERIA', obscureText: false,keyboardType: TextInputType.streetAddress,enable: true,)),
              const Gap(34),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 77,
                      height: 32,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: const Color(0xFF345FB4),
                              width: 1
                          )
                      ),

                      child: const Center(child: Text("DONE", style: TextStyle(
                        color: Color(0xFF6688CA),

                      ),))),
                ],
              ),








            ],
          ),
        ),
      ),
    );
  }
}



// import 'dart:io';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:lords_school_p/mvvm/view/profile.dart';
// import 'package:lords_school_p/mvvm/view/testingTwo.dart';
//
// import '../constant/colors.dart';
// import '../constant/responsiveness.dart';
// import 'HiStudent.dart';
//
// class UpdateProfile extends StatelessWidget {
//   UpdateProfile({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final appBar =
//     final BottomShee =  BottomSheet(
//       backgroundColor: Colorbackground,
//       enableDrag: false,
//       onClosing: () {
//         return null;
//       }, builder: (context) {
//       return bottomSContainer();
//     },);
//
//
//
//
//
//     return  responsiveness(
//       backgroundColor: Colorbackground,
//       appBar:appBar,
//       bottomSheet: BottomShee,
//     );
//   }
// }











