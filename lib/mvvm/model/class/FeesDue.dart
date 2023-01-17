// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

FeeDue budgetClass(String str) => FeeDue.fromJson(json.decode(str));

String budgetCla(FeeDue data) => json.encode(data.toJson());

class FeeDue {
  FeeDue({
    required this.ReceiptNo,
    required  this.date,
    required this.TotalPendingAmount,
    required this.paynow,
    required this.DONWLOAD,
  });

  String ReceiptNo;
  String TotalPendingAmount;
  DateTime date;
  String paynow;
  String DONWLOAD;

  factory FeeDue.fromJson(Map<String, dynamic> json) => FeeDue(
    ReceiptNo: json["ReceiptNo"],
    TotalPendingAmount: json["TotalPendingAmount"],
    date: json["date"],
    paynow: json["paynow"],
    DONWLOAD: json["DONWLOAD"],
  );

  Map<String, dynamic> toJson() => {
    "ReceiptNo": ReceiptNo,
    "TotalPendingAmount": TotalPendingAmount,
    "date": date,
    "paynow": paynow,
    "DONWLOAD": DONWLOAD,
  };
}
