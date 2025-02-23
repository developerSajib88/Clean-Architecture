import 'package:clean_architecture/features/products/domain/entities/all_products_entity.dart';
import 'package:equatable/equatable.dart';

sealed class ProductState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProductInit extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final ProductsEntity? productsEntity;

  ProductLoaded({required this.productsEntity});

  @override
  List<Object?> get props => [productsEntity];

  ProductLoaded copyWith({ProductsEntity? productsEntity}) =>
      ProductLoaded(productsEntity: productsEntity ?? this.productsEntity);
}

class ProductFailure extends ProductState {
  final String message;
  ProductFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
