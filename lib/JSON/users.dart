// To parse this JSON data, do
//
//     final users = usersFromMap(jsonString);

import 'dart:convert';

Users usersFromMap(String str) => Users.fromMap(json.decode(str));

String usersToMap(Users data) => json.encode(data.toMap());

class Users {
  final int? usrId;
  final String? usrName;
  final String email;
  final String password;

  Users({
    this.usrId,
    this.usrName,
    required this.email,
    required this.password,
  });

  // this is json value must be same as your column name in database
  factory Users.fromMap(Map<String, dynamic> json) => Users(
    usrId: json["usrID"],
    usrName: json["usrName"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toMap() => {
    "usrID": usrId,
    "usrName": usrName,
    "email": email,
    "password": password,
  };
}
