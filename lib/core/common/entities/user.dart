// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String? name;
  final String? location;
  final String? phone;
  final String? profileUrl;

  const User({
    required this.id,
    required this.email,
    this.name,
    this.location,
    this.phone,
    this.profileUrl,
  });

  @override
  List<Object?> get props => [id, name, email, phone, location, profileUrl];
}
