

import '../../../models/property_model.dart';

sealed class SearchCatalog1State{
}

class SearchCatalogInitialState extends SearchCatalog1State{}

class SearchCatalogLoadingState extends SearchCatalog1State{}

class SearchCatalogLoadedState extends SearchCatalog1State{
  final List<PropertyModel> properties;
  SearchCatalogLoadedState(this.properties);
}

class SearchCatalogErrorState extends SearchCatalog1State{}