// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_contacts_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterContacts_address _$CharacterContacts_addressFromJson(
        Map<String, dynamic> json) =>
    CharacterContacts_address(
      json['street'] as String,
      json['suite'] as String,
      json['city'] as String,
      json['zipcode'] as String,
      AddressGeo.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterContacts_addressToJson(
        CharacterContacts_address instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };
