// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';



EventProgramClass budgetClass(String str) => EventProgramClass.fromJson(json.decode(str));

String budgetCla(EventProgramClass data) => json.encode(data.toJson());


class EventProgramClass {
  EventProgramClass({
    required this.Title,
    required this.img,
    required this.Time,
    required this.Details,
    required this.id,
  });



  String Title;
  String img;
  DateTime Time;
  String Details;
  String id;

  factory EventProgramClass.fromJson(Map<String, dynamic> json) => EventProgramClass(
    Title: json["Title"],
    img: json["img"],
    Time: json["Time"],
    Details: json["Details"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "Title": Title,
    "img": img,
    "Time": Time,
    "Details": Details,
    "id": id,
  };
}
