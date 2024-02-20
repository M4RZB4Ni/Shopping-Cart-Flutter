// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResultDtoImpl _$$ProductResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResultDtoImpl(
      products: ProductsDto.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductResultDtoImplToJson(
        _$ProductResultDtoImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$ProductsDtoImpl _$$ProductsDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductsDtoImpl(
      productsList: (json['productsList'] as List<dynamic>?)
              ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductDto>[],
    );

Map<String, dynamic> _$$ProductsDtoImplToJson(_$ProductsDtoImpl instance) =>
    <String, dynamic>{
      'productsList': instance.productsList,
    };

_$ProductDtoImpl _$$ProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoImpl(
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      image: json['image'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
      'description': instance.description,
      'image': instance.image,
      'id': instance.id,
    };
