import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lords_school_p/mvvm/view/testingTwo.dart';

import '../constant/colors.dart';
import '../constant/responsiveness.dart';
import 'HiStudent.dart';

class Profile extends StatelessWidget {
   Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar =  AppBar(
      backgroundColor: Colorbackground,
      elevation: 0,
      title: Text("My Profile"),
      toolbarHeight: MediaQuery.of(context).size.height*0.12,

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
                    color: Color(0xFF5278C1),
                    width: 1
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Color(0xFFCACACA),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.person, color: Color(0xFFA55467), size: 50),

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
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined, color: Colors.grey,)),
                      ],
                    )

                  ],
                ),
              ),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Admission  No", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),

                      Container(
                          width: MediaQuery.of(context).size.width*0.40,
                          child: textFiedFor(hintText: '0002021049', obscureText: false, keyboardType: null,)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Academic Year", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),

                      Container(
                          width: MediaQuery.of(context).size.width*0.40,
                          child: textFiedFor(hintText: '2021-2022', obscureText: false, keyboardType: null,)),
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
                      Text("Date of Birth", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),

                      Container(
                          width: MediaQuery.of(context).size.width*0.40,
                          child: textFiedFor(hintText: '22 July 1996', obscureText: false, keyboardType: null,)),
                    ],
                  ),
                ],
              ),
              const Gap(34),
              Text("Parent Mail ID", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
              const Gap(8),
              Container(
                  width: double.infinity,
                  child: textFiedFor(hintText: '01 Apr 2018', obscureText: false, keyboardType: null,)),
              const Gap(34),
              Text("Mother Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
              const Gap(8),
              Container(
                  width: double.infinity,
                  child: textFiedFor(hintText: 'Martins Motunrayo', obscureText: false, keyboardType: null,)),
              const Gap(34),
              Text("Father Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
              const Gap(8),
              Container(
                  width: double.infinity,
                  child: textFiedFor(hintText: 'Martins Segun', obscureText: false, keyboardType: null,)),
              const Gap(34),
              const Text("Parmanent Add.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),),
              const Gap(8),
              Container(
                  width: double.infinity,
                  child: textFiedFor(hintText: 'Lagos, NIGERIA', obscureText: false, keyboardType: null,)),
              const Gap(34),
              InkWell(onTap: () {
                var logout = FirebaseAuth.instance.signOut();
                Get.off(HiStudent());
              },child: Text("LogOut")),
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






class textFiedFor extends StatelessWidget {
  textFiedFor({
    Key? key, required this.hintText, this.controller,
    required this.obscureText, this.enable= false,
    this.IcononPressed, this.icon, required this.keyboardType
  }) : super(key: key);

  String hintText;
  Function()? IcononPressed;
  IconData? icon;
  TextInputType? keyboardType;
  bool obscureText;
  bool enable ;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enable,
      obscureText: obscureText,
      cursorColor: Colors.grey,
      controller: controller,

      keyboardType: keyboardType,
      decoration:  InputDecoration(
          focusColor: Colors.grey,
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
          hintText: hintText,
          suffixIcon: IconButton(onPressed: IcononPressed, icon:  Icon(icon))
      ),
    );
  }
}
