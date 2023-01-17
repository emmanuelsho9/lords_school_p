import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lords_school_p/mvvm/view/testingTwo.dart';

class TestThree extends StatefulWidget {
  const TestThree({Key? key}) : super(key: key);

  @override
  State<TestThree> createState() => _TestThreeState();
}

class _TestThreeState extends State<TestThree> {
  File? selectedImg;
  imgF(){
    
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          FloatingActionButton(child: Icon(Icons.add),onPressed: () {

          },)
        ],
      ),
    );
  }
}
