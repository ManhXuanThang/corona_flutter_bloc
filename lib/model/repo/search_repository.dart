import 'package:coronavirus_app/model/api/rest_client.dart';
import 'package:coronavirus_app/model/response/country_response.dart';
import 'package:dio/dio.dart';

class SearchRepository {
  final dio = Dio();

  Future<CountryResponse> getCountry() async {
    final client = RestClient(dio);
    return client.getListCountry();
  }
}
