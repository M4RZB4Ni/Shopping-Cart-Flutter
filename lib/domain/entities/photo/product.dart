// Import necessary packages and files for Freezed annotations.
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/product/product_dto.dart';

// Import the DTO model for Product details.

// Generate part files using Freezed package.
part 'product.freezed.dart';
part 'product.g.dart';

// Freezed annotations to create immutable data classes for Products and Product.
@freezed
class Products with _$Products {
  // Factory constructor for Products data class.
  const factory Products({
    required final List<Product> productsList, // List of Product objects.
  }) = _Products;

  // Factory method to deserialize a JSON map into a Products object.
  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  // Factory method to convert a ProductsDto object into a Products object.
  factory Products.fromDto(ProductsDto productsDto) {
    return Products(
      productsList: productsDto.productsList
          .map((productsDto) => Product.fromDto(productsDto))
          .toList(),
    );
  }
}

@freezed
class Product with _$Product {
  // Factory constructor for Product data class.
  const factory Product({
    required String name,
    required int quantity,
    required double price,
    required String description,
    required String image,
    required int id,
  }) = _Product;

  // Factory method to deserialize a JSON map into a Product object.
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  // Factory method to convert a ProductDto object into a Product object.
  factory Product.fromDto(ProductDto productDto) {
    return Product(
        name: productDto.name,
        quantity: productDto.quantity,
        price: productDto.price,
        description: productDto.description,
        image: productDto.image,
        id: productDto.id);
  }
}
