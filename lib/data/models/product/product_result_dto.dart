import 'package:freezed_annotation/freezed_annotation.dart';

// Generate part files using Freezed package.
part 'product_result_dto.freezed.dart';
part 'product_result_dto.g.dart';

// Freezed annotations to create immutable data classes for DTOs.
@freezed
class ProductResultDto with _$ProductResultDto {
  factory ProductResultDto({
    required int statusCode,
    required List<ProductDto> products,
  }) = _ProductResultDto;

  factory ProductResultDto.fromJson(Map<String, dynamic> json) =>
      _$ProductResultDtoFromJson(json);
}

@freezed
class ProductDto with _$ProductDto {
  factory ProductDto({
    required String name,
    required int quantity,
    required double price,
    required String description,
    required String image,
    required int id,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}
