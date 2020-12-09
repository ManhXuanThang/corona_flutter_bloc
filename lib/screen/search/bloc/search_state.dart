import 'package:coronavirus_app/model/response/country_response.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchFailed extends SearchState {
  final String msg;

  SearchFailed(this.msg);

  @override
  List<Object> get props => [msg];

  @override
  String toString() {
    return 'SearchLoadFailed{: $msg}';
  }
}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState {
  final CountryResponse response;

  const SearchLoaded(this.response);

  @override
  List<Object> get props => [response];

  @override
  String toString() {
    return 'SearchLoadCountry{response: $response}';
  }
}
