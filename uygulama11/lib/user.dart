class User {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;
  User(this.id, this.email, this.firstName, this.lastName, this.avatar);
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "email": email,
      "first_name": firstName,
      "last_name": lastName,
      "avatar": avatar,
    };
  }

  User.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        email = map["email"],
        firstName = map["first_name"],
        lastName = map["last_name"],
        avatar = map["avatar"];
}
