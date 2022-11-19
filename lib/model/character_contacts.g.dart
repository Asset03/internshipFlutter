// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_contacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterContacts _$CharacterContactsFromJson(Map<String, dynamic> json) =>
    CharacterContacts(
      json['id'] as int,
      json['name'] as String,
      json['username'] as String,
      json['email'] as String,
      CharacterContacts_address.fromJson(
          json['address'] as Map<String, dynamic>),
      json['phone'] as String,
      json['website'] as String,
      ContactsCompany.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterContactsToJson(CharacterContacts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };
