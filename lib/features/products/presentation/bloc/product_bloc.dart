import 'package:clean_architecture/features/products/presentation/bloc/product_event.dart';
import 'package:clean_architecture/features/products/presentation/bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInit()) {
    on<FetchProducts>((event, emit) {});
    on<SearchProducts>((event, emit) {});
  }
}
