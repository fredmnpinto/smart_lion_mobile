class UserModel {
  int? id;
  final int userTypeId;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final DateTime registerDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const userTypeIdAttrName = "user_type_id";
  static const usernameAttrName = "username";
  static const firstNameAttrName = "first_name";
  static const lastNameAttrName = "last_name";
  static const emailAttrName = "email";
  static const phoneNumberAttrName = "phone_number";
  static const registerDateAttrName = "register_date";
  static const updateDateAttrName = "update_date";

  UserModel({
    this.id,
    required this.userTypeId,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.registerDate,
    required this.updateDate,
  });

  factory UserModel.fromJson({required Map<String, dynamic> jsonData}) =>
      UserModel(
        id: jsonData[idAttrName],
        userTypeId: jsonData[userTypeIdAttrName],
        username: jsonData[usernameAttrName]!,
        firstName: jsonData[firstNameAttrName]!,
        lastName: jsonData[lastNameAttrName]!,
        email: jsonData[emailAttrName],
        phoneNumber: jsonData[phoneNumberAttrName],
        registerDate: DateTime.parse(jsonData[registerDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        userTypeIdAttrName: userTypeId,
        usernameAttrName: username,
        firstNameAttrName: firstName,
        lastNameAttrName: lastName,
        emailAttrName: email,
        phoneNumberAttrName: phoneNumber,
        registerDateAttrName: registerDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
