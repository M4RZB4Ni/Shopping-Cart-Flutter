import 'package:freezed_annotation/freezed_annotation.dart';

// Generate part files using Freezed package.
part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

// Freezed annotations to create immutable data classes for DTOs.
@freezed
class ProductResultDto with _$ProductResultDto {
  // Factory constructor for a ProductResultDto.
  factory ProductResultDto({
    required final ProductsDto products, // ProductsDto object containing a list of ProductDto.
  }) = _ProductResultDto;

  // Factory method to deserialize a JSON map into a ProductResultDto object.
  factory ProductResultDto.fromJson(Map<String, dynamic> json) =>
      _$ProductResultDtoFromJson(json);
}

@freezed
class ProductsDto with _$ProductsDto {
  // Immutable data class for a list of ProductDto.
  const factory ProductsDto({
    @Default(<ProductDto>[]) List<ProductDto> productsList, // List of ProductDto objects.
  }) = _ProductsDto;

  // Factory method to deserialize a JSON map into a ProductsDto object.
  factory ProductsDto.fromJson(Map<String, dynamic> json) =>
      _$ProductsDtoFromJson(json);
}

@freezed
class ProductDto with _$ProductDto {
  // Immutable data class for individual Product details.
  const factory ProductDto({
    required String name,
    required int quantity,
    required double price,
    required String description,
    required String image,
    required int id,
  }) = _ProductDto;

  // Factory method to deserialize a JSON map into a ProductDto object.
  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}