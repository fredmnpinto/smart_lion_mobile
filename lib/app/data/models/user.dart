class UserModel {
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final DateTime insertDate;
  final DateTime updateDate;

  static const idAttrName = "id";
  static const usernameAttrName = "username";
  static const firstNameAttrName = "first_name";
  static const lastNameAttrName = "last_name";
  static const insertDateAttrName = "insert_date";
  static const updateDateAttrName = "update_date";

  UserModel({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.insertDate,
    required this.updateDate,
  });

  factory UserModel.fromJson({required Map<String, dynamic> jsonData}) =>
      UserModel(
        id: jsonData[idAttrName]!,
        username: jsonData[usernameAttrName]!,
        firstName: jsonData[firstNameAttrName]!,
        lastName: jsonData[lastNameAttrName]!,
        insertDate: DateTime.parse(jsonData[insertDateAttrName].toString()),
        updateDate: DateTime.parse(jsonData[updateDateAttrName].toString()),
      );

  Map<String, dynamic> toJson() => {
        idAttrName: id,
        usernameAttrName: username,
        firstNameAttrName: firstName,
        lastNameAttrName: lastName,
        insertDateAttrName: insertDate.toString(),
        updateDateAttrName: updateDate.toString(),
      };
}
