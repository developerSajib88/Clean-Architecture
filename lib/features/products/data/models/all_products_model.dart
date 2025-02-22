import 'dart:convert';

import 'package:clean_architecture/features/products/data/models/product_model.dart';
import 'package:clean_architecture/features/products/domain/entities/all_products_entity.dart';

class AllProductsModel {
  final List<ProductModel>? products;
  final int? total;
  final int? skip;
  final int? limit;

  AllProductsModel({this.products, this.total, this.skip, this.limit});

  AllProductsModel copyWith({
    List<ProductModel>? products,
    int? total,
    int? skip,
    int? limit,
  }) => AllProductsModel(
    products: products ?? this.products,
    total: total ?? this.total,
    skip: skip ?? this.skip,
    limit: limit ?? this.limit,
  );

  factory AllProductsModel.fromRawJson(String str) =>
      AllProductsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllProductsModel.fromJson(Map<String, dynamic> json) =>
      AllProductsModel(
        products:
            json["products"] == null
                ? []
                : List<ProductModel>.from(
                  json["products"]!.map((x) => ProductModel.fromJson(x)),
                ),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
    "products":
        products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
    "total": total,
    "skip": skip,
    "limit": limit,
  };


  ProductsEntity toEntity()=> ProductsEntity(
    products: products,
    total: total,
    skip: skip,
    limit: limit
  );

}
