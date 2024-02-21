// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckoutModelImpl _$$CheckoutModelImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutModelImpl(
      statusCode: json['statusCode'] as int,
      checkout: Checkout.fromJson(json['checkout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckoutModelImplToJson(_$CheckoutModelImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'checkout': instance.checkout,
    };

_$CheckoutImpl _$$CheckoutImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutImpl(
      total_price: (json['total_price'] as num).toDouble(),
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CheckoutImplToJson(_$CheckoutImpl instance) =>
    <String, dynamic>{
      'total_price': instance.total_price,
      'items': instance.items,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      image: json['image'] as String,
      id: json['id'] as int,
      total_price: (json['total_price'] as num).toDouble(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
      'description': instance.description,
      'image': instance.image,
      'id': instance.id,
      'total_price': instance.total_price,
    };
