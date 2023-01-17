import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lords_school_p/mvvm/view/HiStudent.dart';
import 'package:lords_school_p/mvvm/view/testingThree.dart';

class testingTwo extends StatelessWidget {
   testingTwo({Key? key}) : super(key: key);

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _emailController,
          ),
          TextField(
            controller: _passwordController,

          ),
          InkWell(onTap: () async {
            var signUp = await FirebaseAuth.
            instance.
            createUserWithEmailAndPassword
              (email: _emailController.text.trim(), password: _passwordController.text.trim()).then((value) => Get.to(TestThree()));
          },child: btnGen(text: "Sign",))
        ],
      ),
    );
  }
}
