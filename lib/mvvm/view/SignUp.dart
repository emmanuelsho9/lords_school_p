import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lords_school_p/mvvm/view/studentDashboard.dart';

import '../constant/colors.dart';
import '../constant/responsiveness.dart';
import '../constant/routesFile.dart';
import 'HiStudent.dart';
import 'UpdateProfile.dart';

class Signup extends StatelessWidget {
   Signup({Key? key}) : super(key: key);

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _FullNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  responsiveness(
      backgroundColor: Colorbackground,

      body: Container(
        child: SingleChildScrollView(

          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height*0.4,

                  child: const appBar()),
              Container(

                  height: MediaQuery.of(context).size.height*0.6,

                  child: bodySignUp(emailController: _emailController, passwordController: _passwordController, fullNameController:_FullNameController)),


            ],
          ),
        ),
      ),
    );
  }
}

class bodySignUp extends StatelessWidget {
  const bodySignUp({
    Key? key,
    required TextEditingController emailController,
    required TextEditingController passwordController, required TextEditingController fullNameController,

  }) : _emailController = emailController, _passwordController = passwordController, _fullNameController =fullNameController, super(key: key);

  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final TextEditingController _fullNameController;

  @override
  Widget build(BuildContext context) {
    bool _isLoading = false;

    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          color: Colors.white
      ),

      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),

      child: SingleChildScrollView(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Enter your FullName", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16,fontWeight: FontWeight.w400),),
            textFiedForLogin(controller: _fullNameController,hintText: 'Joe Smitte', keyboardType: TextInputType.name, obscureText: false,), const Text("Enter your email", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16,fontWeight: FontWeight.w400),),
            const Gap(30),
            textFiedForLogin(controller: _emailController,hintText: '@gmail.com', keyboardType: TextInputType.emailAddress, obscureText: false,),
            const Gap(30),
            const Text("Password", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16,fontWeight: FontWeight.w400),),
            textFiedForLogin(enabled: true,controller: _passwordController,hintText: '************', keyboardType: TextInputType.visiblePassword, obscureText: true,),
            const Gap(30),
            StatefulBuilder(
                builder: (context, setState) {
                  return _isLoading==false?  InkWell(
                      onTap: () async {
                        _isLoading=true;
                        setState((){});

                        try{
                          if(_emailController.text.isEmpty&&_passwordController.text.isEmpty){
                            Get.snackbar("Empty details", "Enter your email and password to sign in as a student");
                          }else{
                            var signUp = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text.trim().toLowerCase(), password: _passwordController.text.trim()).then((value) =>  Get.off(
                                UpdateProfile()
                            ),);
                          }
                          _isLoading=false;


                        }catch(e){
                          Get.snackbar("$e".replaceAll("firebase_auth", "Hello"), "$e".replaceAll("firebase_auth", ""));
                          _isLoading=false;
                          setState((){});

                        }
                      },
                      child: btnGen(text: 'SIGN IN', fontStyle: FontStyle.italic)):
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        color: Colorbackground,
                      ),
                    ],
                  );
                }),

            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                InkWell(onTap: () {
                  Get.off(HiStudent());
                },child: const Text("Login", style:  TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w400),)),
              ],
            ),
          ]
        ),
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
      leading: Text(""),
      actions: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                const  Text("Sign Up as a Student", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                SizedBox(height: MediaQuery.of(context).size.height*0.06,)

              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.5,)


          ],
        ),


      ],
      toolbarHeight: MediaQuery.of(context).size.height*0.38,
    );
  }
}



