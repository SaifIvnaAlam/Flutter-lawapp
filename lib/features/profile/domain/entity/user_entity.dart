import 'dart:convert';

class User {
  String userName;
  String profilePicture;
  String userEmail;
  User({
    required this.userName,
    required this.profilePicture,
    required this.userEmail,
  });

  User copyWith({
    String? userName,
    String? profilePicture,
    String? userEmail,
  }) {
    return User(
      userName: userName ?? this.userName,
      profilePicture: profilePicture ?? this.profilePicture,
      userEmail: userEmail ?? this.userEmail,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'userName': userName});
    result.addAll({'profilePicture': profilePicture});
    result.addAll({'userEmail': userEmail});

    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userName: map['userName'] ?? '',
      profilePicture: map['profilePicture'] ?? '',
      userEmail: map['userEmail'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() =>
      'User(userName: $userName, profilePicture: $profilePicture, userEmail: $userEmail)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.userName == userName &&
        other.profilePicture == profilePicture &&
        other.userEmail == userEmail;
  }

  @override
  int get hashCode =>
      userName.hashCode ^ profilePicture.hashCode ^ userEmail.hashCode;
}
