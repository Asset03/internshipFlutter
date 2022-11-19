import 'package:aza/model/character_contacts_address_geo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_contacts_address.g.dart';

@JsonSerializable()
class CharacterContacts_address{
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final AddressGeo geo;

  factory CharacterContacts_address.fromJson(Map<String, dynamic> json) => _$CharacterContacts_addressFromJson(json);

  CharacterContacts_address(this.street, this.suite, this.city, this.zipcode, this.geo);

  Map<String, dynamic> toJson() => _$CharacterContacts_addressToJson(this);
}