import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';

import '../constant/responsiveness.dart';
import '../model/provider/provider.dart';

class SchoolGallery extends StatelessWidget {
  const SchoolGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helperProvider = Provider.of<HelperProvider>(context, listen: false);
    final feeDueList = helperProvider.SchoolGallery;

  //  bool arrow = true;

    BottomSheet bottomSheet =BottomSheet(
      enableDrag: false,
      onClosing: () {  }, backgroundColor: Colorbackground,
      builder: (BuildContext context) {
        
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: StaggeredGridView.countBuilder(crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              itemCount: feeDueList.length,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0)
                    ),
                    child:
                Image.asset(feeDueList[index].img, fit:  BoxFit.cover,));
              }, staggeredTileBuilder: (index) {
                return StaggeredTile.count(1, index.isEven?1:2);
              },),
        );


      },

    );








    AppBar appBar = AppBar(
      backgroundColor: Colorbackground,
      toolbarHeight: 70,
      title: const Text("School Gallery", style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400
      ),),
    );






    return  responsiveness(
      body: Container(
        color: Colorbackground,
      ),
      backgroundColor: Colorbackground,
      bottomSheet: bottomSheet,
      appBar:appBar,
    );
  }
}
