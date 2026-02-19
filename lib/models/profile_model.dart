
import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  final String name;
  final String email;
  final int age;
  final String address;
  final int phone;
  final String linkedin;
  final String imageUrl;

  ProfileModel({
    required this.name,
    required this.email,
    required this.age,
    required this.address,
    required this.phone,
    required this.linkedin,
    required this.imageUrl,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}