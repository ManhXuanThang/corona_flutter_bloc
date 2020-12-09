import 'package:equatable/equatable.dart';

class SearchEvent extends Equatable {
  const SearchEvent();
  @override
  List<Object> get props => [];
}

class SearchLoadData extends SearchEvent {}
class RefreshHome extends SearchEvent{}
