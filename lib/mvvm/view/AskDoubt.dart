import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';

import '../constant/responsiveness.dart';
import '../model/provider/provider.dart';
import 'HiStudent.dart';

class AskDoubt extends StatelessWidget {
  const AskDoubt({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: SingleChildScrollView(
            child: Column(
                  children: [
                    const Gap(30),
                    Row(
                      children: const [
                        Text("Select Teacher", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    textFiedForLogin(enabled: false,
                      hintText: 'Mrs Dada Awuru',
                      icon: Icons.keyboard_arrow_down,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,),
                    const Gap(30),
                    Row(
                      children: const [
                        Text("Select Subject", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    textFiedForLogin(enabled: false,
                      hintText: 'Math',
                      icon: Icons.keyboard_arrow_down,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,),
                    const Gap(30),
                    Row(
                      children: const [
                        Text("Title", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    textFiedForLogin(enabled: false,
                      hintText: 'Factoring a sum or difference of two cubes',
                      icon: Icons.keyboard_arrow_down,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,),
                    const Gap(30),
                    Row(
                      children: const [
                        Text("Doubt Description", style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    textFiedForLogin(enabled: false,
                      hintText: '--',
                      icon: Icons.keyboard_arrow_down,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,),
                    const Gap(30),

                    InkWell(
                        onTap: () {
                          // Get.toNamed(
                          //     RouteFile.StudendDashboardScreenScreenRoute()
                          // );
                        },
                        child: btnGen(text: 'SEND', fontStyle: FontStyle.italic)),


                  ],
                ),
          ),


        );
      },

    );









    AppBar appBar = AppBar(
      backgroundColor: Colorbackground,
      toolbarHeight: 70,
      title: const Text("Ask Doubt", style: TextStyle(
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
