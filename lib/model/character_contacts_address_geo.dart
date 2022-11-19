import 'package:json_annotation/json_annotation.dart';

part 'character_contacts_address_geo.g.dart';


@JsonSerializable()
class AddressGeo{
  final String lat;
  final String lng;

  factory AddressGeo.fromJson(Map<String, dynamic> json) => _$AddressGeoFromJson(json);

  AddressGeo(this.lat, this.lng);

  Map<String, dynamic> toJson() => _$AddressGeoToJson(this);
}