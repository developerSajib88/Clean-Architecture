import 'package:equatable/equatable.dart';

sealed class ProductEvent extends Equatable {}

class FetchProducts extends ProductEvent {
  @override
  List<Object?> get props => [];
}

class SearchProducts extends ProductEvent {
  final String query;

  SearchProducts({required this.query});

  @override
  List<Object?> get props => [query];
}
