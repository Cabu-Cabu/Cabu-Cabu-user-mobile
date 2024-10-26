import 'package:cabu_cabu_user_mobile/core/common/entities/user.dart';

class UserModel extends User {
  UserModel({
    required super.id,
    required super.email,
    super.name,
    super.location,
    super.phone,
    super.profileUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'name': name,
      'location': location,
      'phone': phone,
      'profileUrl': profileUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      email: map['email'] as String,
      name: map['name'] != null ? map['name'] as String : null,
      location: map['location'] != null ? map['location'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      profileUrl:
          map['profileUrl'] != null ? map['profileUrl'] as String : null,
    );
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? name,
    String? location,
    String? phone,
    String? profileUrl,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      location: location ?? this.location,
      phone: phone ?? this.phone,
      profileUrl: profileUrl ?? this.profileUrl,
    );
  }
}
