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
import 'SignUp.dart';

class HiStudent extends StatelessWidget {
  HiStudent({Key? key}) : super(key: key);

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  responsiveness(
      backgroundColor: Colorbackground,

      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(

          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height*0.5,
                  child: const appBar()),
              SizedBox(
                  height: MediaQuery.of(context).size.height*0.5,
                  child: bodySignUp(emailController: _emailController, passwordController: _passwordController)),


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
    required TextEditingController passwordController,
  }) : _emailController = emailController, _passwordController = passwordController, super(key: key);

  final TextEditingController _emailController;
  final TextEditingController _passwordController;

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
            children: [
              const Text("Enter your email", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16,fontWeight: FontWeight.w400),),
              textFiedForLogin(controller: _emailController,hintText: '@gmail.com', keyboardType: TextInputType.emailAddress, obscureText: false,),
              const Gap(30),
              const Text("Password", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16,fontWeight: FontWeight.w400),),
              textFiedForLogin(enabled: true,controller: _passwordController,hintText: '************', keyboardType: TextInputType.visiblePassword, obscureText: true,),
              const Gap(30),
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
                            var signUp = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim().toLowerCase(), password: _passwordController.text.trim()).then((value) =>  Get.to(
                                StudentsDashboard()
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
                      Get.off(Signup());
                    },child: const Text("SignUp", style:  TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w400),)),
                    const Text("Forgot Password?", style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w400),),
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
                const  Text("Hi Student", style: TextStyle(fontSize: 34,fontStyle: FontStyle.italic),),
                const  Text("Sign in to continue", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
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







class textFiedForLogin extends StatelessWidget {
   textFiedForLogin({
    Key? key, required this.hintText,
     required this.obscureText, this.enabled=true, this.controller,
     this.IcononPressed, this.icon, required this.keyboardType
  }) : super(key: key);

  String hintText;
   Function()? IcononPressed;
   IconData? icon;
   TextInputType? keyboardType;
   bool obscureText = false;
   bool? enabled;
   TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      enabled: enabled,
      cursorColor: Colors.grey,
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



class btnGen extends StatelessWidget {
   btnGen({
    Key? key, required this.text, this.fontStyle,
  }) : super(key: key);

  String text;
   FontStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorBtn,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(text, style:  TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontStyle: fontStyle,
          ),),
        ],
      ),
    );
  }
}