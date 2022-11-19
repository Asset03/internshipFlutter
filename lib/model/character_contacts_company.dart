import 'package:json_annotation/json_annotation.dart';


part 'character_contacts_company.g.dart';

@JsonSerializable()
class ContactsCompany{
  final String name;
  final String catchPhrase;
  final String bs;

  factory ContactsCompany.fromJson(Map<String, dynamic> json) => _$ContactsCompanyFromJson(json);

  ContactsCompany(this.name, this.catchPhrase, this.bs);

  Map<String, dynamic> toJson() => _$ContactsCompanyToJson(this);

}