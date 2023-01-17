// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

SchoolGalleryClass budgetClass(String str) => SchoolGalleryClass.fromJson(json.decode(str));

String budgetCla(SchoolGalleryClass data) => json.encode(data.toJson());

class SchoolGalleryClass {
  SchoolGalleryClass({
    required this.img,
  });

  String img;

  factory SchoolGalleryClass.fromJson(Map<String, dynamic> json) => SchoolGalleryClass(
    img: json["img"],

  );

  Map<String, dynamic> toJson() => {
    "img": img,
  };
}
