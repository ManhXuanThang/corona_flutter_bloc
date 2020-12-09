import 'package:json_annotation/json_annotation.dart';
part 'country_response.g.dart';

@JsonSerializable()
class CountryResponse{
  List<CountryResponse> countryResponse;


  CountryResponse({this.countryResponse});

  factory CountryResponse.fromJson(Map<String, dynamic> json) =>
      _$CountryResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CountryResponseToJson(this);
}
