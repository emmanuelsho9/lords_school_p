import 'package:flutter/material.dart';

import 'colors.dart';

class responsiveness extends StatelessWidget {
   responsiveness({Key? key,
     this.appBar,
     this.bottomSheet,
     this.body,
     this.backgroundColor,
     this.bottomNavigationBar,
     this.drawer,
     this.floatingActionButton,
   }) : super(key: key);


   Widget? body;
   PreferredSizeWidget? appBar;
   Color? backgroundColor=Colorbackground;
   Widget? bottomNavigationBar;
   Widget? bottomSheet;
   Widget? drawer;
   Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    var appBarSize = appBar;
    return  Scaffold(
      appBar: appBarSize,

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: (MediaQuery.of(context).size.width),
          child: body,
        ),
      ),
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavigationBar,
      bottomSheet: bottomSheet,
      drawer: drawer,
      floatingActionButton: floatingActionButton,
    );
  }
}
