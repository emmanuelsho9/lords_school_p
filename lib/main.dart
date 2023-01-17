import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lords_school_p/mvvm/view/HiStudent.dart';
import 'package:lords_school_p/mvvm/view/onboardingScreen/onboardingScreen.dart';
import 'package:lords_school_p/mvvm/view/studentDashboard.dart';

import 'firebase_options.dart';
import 'mvvm/view/UpdateProfile.dart';
import 'mvvm/view/testingOne.dart';
import 'mvvm/view/testingThree.dart';
import 'mvvm/view/testingTwo.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var auth = FirebaseAuth.instance;
  var isLogin = false;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Lord's School",
          home: TestThree(),

          // home: (checkUserState() == true ? StudentsDashboard() : new OnboardingScreen()),
        ));
  }

  bool checkUserState() {
    return (auth.currentUser != null);
  }

}