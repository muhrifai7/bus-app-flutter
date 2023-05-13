import 'dart:convert';

class Profile {
  int id;
  String first_name;
  String email;
  String avatar;
  String last_name;

  Profile(
      {required this.id,
      required this.first_name,
      required this.email,
      required this.avatar,
      required this.last_name});

  factory Profile.fromJson(Map<String, dynamic> map) {
    return Profile(
        id: map["id"],
        first_name: map["first_name"],
        email: map["email"],
        avatar: map["avatar"],
        last_name: map["last_name"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "first_name": first_name,
      "email": email,
      "avatar": avatar,
      "last_name": last_name
    };
  }

  @override
  String toString() {
    return 'Profile{id: $id, first_name: $first_name, email: $email, last_name: $last_name,avatar: $avatar}';
  }
}

List<Profile> profileFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Profile>.from(data['data'].map((item) => Profile.fromJson(item)));
}

String profileToJson(Profile data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
