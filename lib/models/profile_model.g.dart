// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      name: json['name'] as String,
      email: json['email'] as String,
      age: (json['age'] as num).toInt(),
      address: json['address'] as String,
      phone: (json['phone'] as num).toInt(),
      linkedin: json['linkedin'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'age': instance.age,
      'address': instance.address,
      'phone': instance.phone,
      'linkedin': instance.linkedin,
      'imageUrl': instance.imageUrl,
    };
