

import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    this.subject,
    this.attended,
    this.total,
    this.canBunk,
    this.days,
  });

  String subject;
  int attended;
  int total;
  bool canBunk;
  int days;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    subject: json["subject"],
    attended: json["attended"],
    total: json["total"],
    canBunk: json["canBunk"],
    days: json["days"],
  );

  Map<String, dynamic> toJson() => {
    "subject": subject,
    "attended": attended,
    "total": total,
    "canBunk": canBunk,
    "days": days,
  };
}
