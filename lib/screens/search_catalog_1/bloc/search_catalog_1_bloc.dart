import 'package:bloc/bloc.dart';
import 'package:visionex_digital_app/screens/search_catalog_1/repository/search_catalog_1_repo.dart';

import '../../../models/property_model.dart';
import '../bloc/search_catalog_1_event.dart';
import '../bloc/search_catalog_1_state.dart';

class SearchCatalog1Bloc
    extends Bloc<SearchCatalog1Event, SearchCatalog1State> {
  final SearchCatalog1Repo searchCatalog1Repo;

  SearchCatalog1Bloc(this.searchCatalog1Repo)
      : super(SearchCatalogInitialState()) {
    on<SearchCatalog1Event>((event, emit) async {
      emit(SearchCatalogInitialState());

      try {
        List<Map<String, dynamic>> snapshot = await searchCatalog1Repo.getProducts();
        
        List<PropertyModel> properties = [];

        if(snapshot.isNotEmpty){
          properties = snapshot.map((map) => PropertyModel.fromMap(map)).toList();
        }
        
        emit(SearchCatalogLoadedState(properties) );
        
        print(snapshot);
      } catch (e) {
        print('--------> SearchCatalog1Bloc error: $e');
        rethrow;
      }
    });
  }
}
