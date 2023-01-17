import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../view/assignment.dart';
import '../class/Assignment.dart';
import '../class/EventProgramClass.dart';
import '../class/FeesDue.dart';
import '../class/MondayClass.dart';
import '../class/ResultClass.dart';
import '../class/SchoolGallery.dart';

class HelperProvider with ChangeNotifier {

  final List <FeeDue> _Fee =[
    FeeDue(ReceiptNo: "02345", date: DateTime.now(), TotalPendingAmount: "180,750", paynow: "PAY NOW", DONWLOAD: "DONWLOAD"),
    FeeDue(ReceiptNo: "02345", date: DateTime.now(), TotalPendingAmount: "180,750", paynow: "PAY NOW", DONWLOAD: "DONWLOAD"),
  ];
  
  final List<AssignmentClass> _assig =[
   AssignmentClass(subj: Subject.CivicEducation, AssignDate: DateTime.now(), LastSubmissionDate: DateTime.now(), TOBESUBMITTED: 'TO BE SUBMITTED'),
   AssignmentClass(subj: Subject.English, AssignDate: DateTime.now(), LastSubmissionDate: DateTime.now(), TOBESUBMITTED: "TO BE SUBMITTED"),
  ];

  final List<EventProgramClass> _EventProgram =[
    EventProgramClass(Title: "Cultural Day", img: "assets/img_22.png", Time: DateTime.now(), Details: "A Cultural day is a for children to showcase their cultural values as well as learn the exciting cultures of others.", id: "id")
  ];



  final List<MondayClass> _monClass =[
     MondayClass(subj: Subj.CivicEducation, Time: DateTime.now(), TeacherName: "Mr. Ogunfeso S.O.", numberOfPeriod: 1),
     MondayClass(subj: Subj.CivicEducation, Time: DateTime.now(), TeacherName: "Mr. Ogunfeso S.O.", numberOfPeriod: 1),
     MondayClass(subj: Subj.CivicEducation, Time: DateTime.now(), TeacherName: "Mr. Ogunfeso S.O.", numberOfPeriod: 1),
  ];

  final List<SchoolGalleryClass> _SchoolGallery =[
    SchoolGalleryClass(img: "assets/img_22.png"),
    SchoolGalleryClass(img: "assets/img_22.png"),
    SchoolGalleryClass(img: "assets/img_22.png"),
    SchoolGalleryClass(img: "assets/img_22.png"),
    SchoolGalleryClass(img: "assets/img_22.png"),
    SchoolGalleryClass(img: "assets/img_22.png"),
    SchoolGalleryClass(img: "assets/img_22.png"),

  ];



  final List<ResultClass> _ResultC =[
    ResultClass(Englis: "Englis", EnglisScore: "77", PercentageScoreEnglis: "100", GradeEnglis: "B", Mathematics: "Mathematics", MathematicsScore: "MathematicsScore", PercentageScoreMathematics: "PercentageScoreMathematics", GradeMathematics: "GradeMathematics")

  ];



  List<AssignmentClass> get assign{
    return [..._assig];
  }
  List<ResultClass> get ResultC{
    return [..._ResultC];
  }
  List<SchoolGalleryClass> get SchoolGallery{
    return [..._SchoolGallery];
  }
  List<MondayClass> get monClass{
    return [..._monClass];
  }

  List<EventProgramClass> get EventProgram{
    return [..._EventProgram];
  }


  List<FeeDue> get Fee{
    return [..._Fee];
  }

}