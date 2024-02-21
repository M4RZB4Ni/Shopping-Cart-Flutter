import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_model.freezed.dart';
part 'checkout_model.g.dart';

@freezed
class CheckoutModel with _$CheckoutModel {
  const factory CheckoutModel({
    required int statusCode,
    required Checkout checkout,
  }) = _CheckoutModel;

  factory CheckoutModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutModelFromJson(json);
}

@freezed
class Checkout with _$Checkout {
  const factory Checkout({
    required double total_price,
    required List<Item> items,
  }) = _Checkout;

  factory Checkout.fromJson(Map<String, dynamic> json) =>
      _$CheckoutFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    required String name,
    required int quantity,
    required double price,
    required String description,
    required String image,
    required int id,
    required double total_price,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
