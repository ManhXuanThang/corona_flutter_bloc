import 'package:equatable/equatable.dart';

class Country extends Equatable {
  String countryName;
  String slug;
  String IS02;

  Country(this.countryName, this.slug, this.IS02);

  @override
  List<Object> get props => [countryName, slug, IS02];

  @override
  String toString() {
    return 'CountryName: {countryName: $countryName, slug: $slug}';
  }
}
