class UserModel {
  final String? id;
  final String? firstname;
  final String? lastname;
  final String? email;
  final String? username;
  final String? password;

  UserModel(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.email,
      required this.username,
      required this.password});
}
