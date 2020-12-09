import 'package:bloc/bloc.dart';
import 'package:coronavirus_app/model/repo/search_repository.dart';
import 'package:coronavirus_app/screen/search/bloc/search_event.dart';
import 'package:coronavirus_app/screen/search/bloc/search_state.dart';
import 'package:meta/meta.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository repository;

  SearchBloc({@required this.repository});

  @override
  SearchState get initialState => SearchLoading();

  Stream<SearchState> _mapLoadSearchToState() async* {
    try {
      final response = await repository.getCountry();
      yield SearchLoaded(response);
    } catch (e) {
      yield SearchFailed(e.toString());
    }
  }

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is SearchLoadData) {
      yield* _mapLoadSearchToState();
    } else if (event is SearchLoading) {
      yield SearchLoading();
      yield* _mapLoadSearchToState();
    }
  }
}
