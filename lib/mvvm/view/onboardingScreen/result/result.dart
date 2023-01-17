import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../../constant/colors.dart';
import '../../../constant/responsiveness.dart';
import '../../../model/provider/provider.dart';


class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helperProvider = Provider.of<HelperProvider>(context, listen: false);
    final feeDueList = helperProvider.ResultC;




    BottomSheet bottomSheet =BottomSheet(
      enableDrag: false,
      onClosing: () {  }, backgroundColor:  Color(0xFF2b06bf),
      builder: (BuildContext context) {
        return  Container(
          height: MediaQuery.of(context).size.height*0.67,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: ListView.builder(itemCount: feeDueList.length, itemBuilder: (context, index) {
            return Column(
              children: [
                Text("You are Excellent,", style: TextStyle(fontStyle: FontStyle.italic,fontSize: 15, fontWeight: FontWeight.w400),),
                Text("Martins, Temitope", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),

                Card(
                  elevation: 7,
                  shadowColor: Colors.black,
                  margin: const EdgeInsets.only(top: 16, right: 16, left: 16),
                  shape: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 14, right: 14, top: 12, bottom: 17),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Table(

                                  children: [
                                    TableRow(

                                      children: [
                                              Text(feeDueList[index].Englis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                              Container(
                                                  color: const Color(0xFFE6EFFF),child: Center(child: Text(feeDueList[index].PercentageScoreEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),))),
                                              Container(
                                                color:  const Color(0xFF6AC259),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text("${feeDueList[index].EnglisScore} - ",textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                                    Text(feeDueList[index].GradeEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),

                                                  ],
                                                ),
                                              )
                                      ]
                                    ),
                                    TableRow(

                                      children: [
                                              Text(feeDueList[index].Englis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                              Container(color: const Color(0xFFE6EFFF),child: Center(child: Text(feeDueList[index].PercentageScoreEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),))),
                                              Container(
                                                color:  const Color(0xFF6AC259),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text("${feeDueList[index].EnglisScore} - ",textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                                    Text(feeDueList[index].GradeEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),

                                                  ],
                                                ),
                                              )
                                      ]
                                    ),
                                    TableRow(

                                        children: [
                                          Text(feeDueList[index].Englis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                          Container(color: const Color(0xFFE6EFFF),child: Center(child: Text(feeDueList[index].PercentageScoreEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),))),
                                          Container(
                                            color:  const Color(0xFF6AC259),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("${feeDueList[index].EnglisScore} - ",textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                                Text(feeDueList[index].GradeEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),

                                              ],
                                            ),
                                          )
                                        ]
                                    ),
                                    TableRow(

                                        children: [
                                          Text(feeDueList[index].Englis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                          Container(color: const Color(0xFFE6EFFF),child: Center(child: Text(feeDueList[index].PercentageScoreEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),))),
                                          Container(
                                            color:  const Color(0xFF6AC259),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("${feeDueList[index].EnglisScore} - ",textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                                Text(feeDueList[index].GradeEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),

                                              ],
                                            ),
                                          )
                                        ]
                                    ),
                                    TableRow(

                                        children: [
                                          Text(feeDueList[index].Englis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                          Container(color: const Color(0xFFE6EFFF),child: Center(child: Text(feeDueList[index].PercentageScoreEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),))),
                                          Container(
                                            color:  const Color(0xFF6AC259),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("${feeDueList[index].EnglisScore} - ",textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                                Text(feeDueList[index].GradeEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),

                                              ],
                                            ),
                                          )
                                        ]
                                    ),
                                    TableRow(

                                        children: [
                                          Text(feeDueList[index].Englis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                          Container(color: const Color(0xFFE6EFFF),child: Center(child: Text(feeDueList[index].PercentageScoreEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),))),
                                          Container(
                                            color:  const Color(0xFF6AC259),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("${feeDueList[index].EnglisScore} - ",textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                                Text(feeDueList[index].GradeEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),

                                              ],
                                            ),
                                          )
                                        ]
                                    ),
                                    TableRow(

                                        children: [
                                          Text(feeDueList[index].Englis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                          Container(color: const Color(0xFFE6EFFF),child: Center(child: Text(feeDueList[index].PercentageScoreEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),))),
                                          Container(
                                            color:  const Color(0xFF6AC259),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("${feeDueList[index].EnglisScore} - ",textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                                Text(feeDueList[index].GradeEnglis,textAlign: TextAlign.start,style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),

                                              ],
                                            ),
                                          )
                                        ]
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),





                        ],
                      )),
                ),
              ],
            );
          },),
        );
      },

    );







    AppBar appBar = AppBar(
      backgroundColor: Color(0xFF2b06bf),
      elevation: 0,
      title: const Text("Events & Programs", style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400
      ),),
    );






    return  responsiveness(
      appBar: appBar,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.258,
            width: double.infinity,
            decoration: const BoxDecoration(
              color:  Color(0xFF2b06bf),
            ),
            child: Center(
              child: Container(
                height: 124,
                width: 124,
                decoration: const BoxDecoration(
                  color:  Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  border: Border.fromBorderSide(BorderSide(
                    color: Colors.black, width: 6
                  ))
                ),

              ),
            ),
          ),
        ],
      ),
      bottomSheet: bottomSheet,

    );
  }
}
