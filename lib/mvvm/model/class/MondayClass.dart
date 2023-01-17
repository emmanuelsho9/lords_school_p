// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';



MondayClass budgetClass(String str) => MondayClass.fromJson(json.decode(str));

String budgetCla(MondayClass data) => json.encode(data.toJson());

enum Subj {
  Mathematics,
  CivicEducation,
  English
}

class MondayClass {
  MondayClass({
    required this.subj,
    required this.Time,
    required this.TeacherName,
    required this.numberOfPeriod,
  });



  Subj subj;
  DateTime Time;
  String TeacherName;
  int numberOfPeriod;

  factory MondayClass.fromJson(Map<String, dynamic> json) => MondayClass(
    subj: json["subj"],
    Time: json["Time"],
    TeacherName: json["TeacherName"],
    numberOfPeriod: json["numberOfPeriod"],
  );

  Map<String, dynamic> toJson() => {
    "subj": subj,
    "Time": Time,
    "TeacherName": TeacherName,
    "numberOfPeriod": numberOfPeriod,
  };
}
