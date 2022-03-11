import 'dart:io';

class UserModel {
  final int id;
  final String username;
  final String firstName;
  final String lastName;

  static const idAttrName = "id";
  static const usernameAttrName = "username";
  static const firstNameAttrName = "first_name";
  static const lastNameAttrName = "last_name";

  UserModel({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
  });

  factory UserModel.fromJson({required Map<String, dynamic> jsonData}) =>
      UserModel(
        id: jsonData[idAttrName],
        username: jsonData[usernameAttrName],
        firstName: jsonData[firstNameAttrName],
        lastName: jsonData[lastNameAttrName],
      );

  Map<String, dynamic> toJson() {
    return {
      idAttrName: id,
      usernameAttrName: username,
      firstNameAttrName: firstName,
      lastNameAttrName: lastName,
    };
  }
}
