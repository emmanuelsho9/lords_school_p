// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';



AssignmentClass budgetClass(String str) => AssignmentClass.fromJson(json.decode(str));

String budgetCla(AssignmentClass data) => json.encode(data.toJson());

enum Subject {
  Mathematics,
  CivicEducation,
  English
}

class AssignmentClass {
  AssignmentClass({
    required this.subj,
    required this.AssignDate,
    required this.LastSubmissionDate,
    required this.TOBESUBMITTED,
  });



  Subject subj;
  DateTime AssignDate;
  DateTime LastSubmissionDate;
  String TOBESUBMITTED;

  factory AssignmentClass.fromJson(Map<String, dynamic> json) => AssignmentClass(
    subj: json["subj"],
    AssignDate: json["AssignDate"],
    LastSubmissionDate: json["LastSubmissionDate"],
    TOBESUBMITTED: json["TOBESUBMITTED"],
  );

  Map<String, dynamic> toJson() => {
    "subj": subj,
    "AssignDate": AssignDate,
    "LastSubmissionDate": LastSubmissionDate,
    "TOBESUBMITTED": TOBESUBMITTED,
  };
}
