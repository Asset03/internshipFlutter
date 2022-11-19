import 'character_contacts_address.dart';
import 'character_contacts_company.dart';
import 'package:json_annotation/json_annotation.dart';


part 'character_contacts.g.dart';

@JsonSerializable()
class CharacterContacts {
  final int id;
  final String name;
  final String username;
  final String email;
  final CharacterContacts_address address;
  final String phone;
  final String website;
  final ContactsCompany company;

  CharacterContacts(this.id, this.name, this.username, this.email, this.address, this.phone, this.website, this.company);

  factory CharacterContacts.fromJson(Map<String, dynamic> json) => _$CharacterContactsFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterContactsToJson(this);

}