import 'package:coronavirus_app/model/response/country_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'rest_client.g.dart';

@RestApi(baseUrl: "https://api.covid19api.com/")
abstract class RestClient{
  factory RestClient(Dio dio,{String baseUrl})=_RestClient;

  @GET("/countries")
  Future<CountryResponse> getListCountry();
}