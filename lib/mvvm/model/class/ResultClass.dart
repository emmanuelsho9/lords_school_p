// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';



ResultClass budgetClass(String str) => ResultClass.fromJson(json.decode(str));

String budgetCla(ResultClass data) => json.encode(data.toJson());


class ResultClass {
  ResultClass({
    required this.Englis,
    required this.EnglisScore,
    required this.PercentageScoreEnglis,
    required this.GradeEnglis,

    required this.Mathematics,
    required this.MathematicsScore,
    required this.PercentageScoreMathematics,
    required this.GradeMathematics,

  });



  String Englis;
  String EnglisScore;
  String PercentageScoreEnglis;
  String GradeEnglis;

  String Mathematics;
  String MathematicsScore;
  String PercentageScoreMathematics;
  String GradeMathematics;


  factory ResultClass.fromJson(Map<String, dynamic> json) => ResultClass(
    Englis: json["Englis"],
    EnglisScore: json["EnglisScore"],
    PercentageScoreEnglis: json["PercentageScoreEnglis"],
    GradeEnglis: json["GradeEnglis"],

    Mathematics: json["Mathematics"],
    MathematicsScore: json["MathematicsScore"],
    PercentageScoreMathematics: json["PercentageScoreMathematics"],
    GradeMathematics: json["GradeMathematics"],
  );

  Map<String, dynamic> toJson() => {
    "Englis": Englis,
    "EnglisScore": EnglisScore,
    "PercentageScoreEnglis": PercentageScoreEnglis,
    "GradeEnglis": GradeEnglis,

    "Mathematics": Mathematics,
    "MathematicsScore": MathematicsScore,
    "PercentageScoreMathematics": PercentageScoreMathematics,
    "GradeMathematics": GradeMathematics,
  };
}
