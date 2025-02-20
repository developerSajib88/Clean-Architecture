import 'package:clean_architecture/features/products/data/models/product_model.dart';

class ProductsEntity {
  final List<ProductModel>? products;
  final int? total;
  final int? skip;
  final int? limit;

  ProductsEntity({this.products, this.total, this.skip, this.limit});
}
