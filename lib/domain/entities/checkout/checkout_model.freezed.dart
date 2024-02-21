// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckoutModel _$CheckoutModelFromJson(Map<String, dynamic> json) {
  return _CheckoutModel.fromJson(json);
}

/// @nodoc
mixin _$CheckoutModel {
  int get statusCode => throw _privateConstructorUsedError;
  Checkout get checkout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutModelCopyWith<CheckoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutModelCopyWith<$Res> {
  factory $CheckoutModelCopyWith(
          CheckoutModel value, $Res Function(CheckoutModel) then) =
      _$CheckoutModelCopyWithImpl<$Res, CheckoutModel>;
  @useResult
  $Res call({int statusCode, Checkout checkout});

  $CheckoutCopyWith<$Res> get checkout;
}

/// @nodoc
class _$CheckoutModelCopyWithImpl<$Res, $Val extends CheckoutModel>
    implements $CheckoutModelCopyWith<$Res> {
  _$CheckoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? checkout = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      checkout: null == checkout
          ? _value.checkout
          : checkout // ignore: cast_nullable_to_non_nullable
              as Checkout,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckoutCopyWith<$Res> get checkout {
    return $CheckoutCopyWith<$Res>(_value.checkout, (value) {
      return _then(_value.copyWith(checkout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutModelImplCopyWith<$Res>
    implements $CheckoutModelCopyWith<$Res> {
  factory _$$CheckoutModelImplCopyWith(
          _$CheckoutModelImpl value, $Res Function(_$CheckoutModelImpl) then) =
      __$$CheckoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, Checkout checkout});

  @override
  $CheckoutCopyWith<$Res> get checkout;
}

/// @nodoc
class __$$CheckoutModelImplCopyWithImpl<$Res>
    extends _$CheckoutModelCopyWithImpl<$Res, _$CheckoutModelImpl>
    implements _$$CheckoutModelImplCopyWith<$Res> {
  __$$CheckoutModelImplCopyWithImpl(
      _$CheckoutModelImpl _value, $Res Function(_$CheckoutModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? checkout = null,
  }) {
    return _then(_$CheckoutModelImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      checkout: null == checkout
          ? _value.checkout
          : checkout // ignore: cast_nullable_to_non_nullable
              as Checkout,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutModelImpl implements _CheckoutModel {
  const _$CheckoutModelImpl({required this.statusCode, required this.checkout});

  factory _$CheckoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutModelImplFromJson(json);

  @override
  final int statusCode;
  @override
  final Checkout checkout;

  @override
  String toString() {
    return 'CheckoutModel(statusCode: $statusCode, checkout: $checkout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutModelImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.checkout, checkout) ||
                other.checkout == checkout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, checkout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutModelImplCopyWith<_$CheckoutModelImpl> get copyWith =>
      __$$CheckoutModelImplCopyWithImpl<_$CheckoutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutModelImplToJson(
      this,
    );
  }
}

abstract class _CheckoutModel implements CheckoutModel {
  const factory _CheckoutModel(
      {required final int statusCode,
      required final Checkout checkout}) = _$CheckoutModelImpl;

  factory _CheckoutModel.fromJson(Map<String, dynamic> json) =
      _$CheckoutModelImpl.fromJson;

  @override
  int get statusCode;
  @override
  Checkout get checkout;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutModelImplCopyWith<_$CheckoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Checkout _$CheckoutFromJson(Map<String, dynamic> json) {
  return _Checkout.fromJson(json);
}

/// @nodoc
mixin _$Checkout {
  double get total_price => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutCopyWith<Checkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutCopyWith<$Res> {
  factory $CheckoutCopyWith(Checkout value, $Res Function(Checkout) then) =
      _$CheckoutCopyWithImpl<$Res, Checkout>;
  @useResult
  $Res call({double total_price, List<Item> items});
}

/// @nodoc
class _$CheckoutCopyWithImpl<$Res, $Val extends Checkout>
    implements $CheckoutCopyWith<$Res> {
  _$CheckoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total_price = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total_price: null == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as double,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutImplCopyWith<$Res>
    implements $CheckoutCopyWith<$Res> {
  factory _$$CheckoutImplCopyWith(
          _$CheckoutImpl value, $Res Function(_$CheckoutImpl) then) =
      __$$CheckoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double total_price, List<Item> items});
}

/// @nodoc
class __$$CheckoutImplCopyWithImpl<$Res>
    extends _$CheckoutCopyWithImpl<$Res, _$CheckoutImpl>
    implements _$$CheckoutImplCopyWith<$Res> {
  __$$CheckoutImplCopyWithImpl(
      _$CheckoutImpl _value, $Res Function(_$CheckoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total_price = null,
    Object? items = null,
  }) {
    return _then(_$CheckoutImpl(
      total_price: null == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as double,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutImpl implements _Checkout {
  const _$CheckoutImpl(
      {required this.total_price, required final List<Item> items})
      : _items = items;

  factory _$CheckoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutImplFromJson(json);

  @override
  final double total_price;
  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Checkout(total_price: $total_price, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutImpl &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total_price, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      __$$CheckoutImplCopyWithImpl<_$CheckoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutImplToJson(
      this,
    );
  }
}

abstract class _Checkout implements Checkout {
  const factory _Checkout(
      {required final double total_price,
      required final List<Item> items}) = _$CheckoutImpl;

  factory _Checkout.fromJson(Map<String, dynamic> json) =
      _$CheckoutImpl.fromJson;

  @override
  double get total_price;
  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  double get total_price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String name,
      int quantity,
      double price,
      String description,
      String image,
      int id,
      double total_price});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
    Object? description = null,
    Object? image = null,
    Object? id = null,
    Object? total_price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      total_price: null == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int quantity,
      double price,
      String description,
      String image,
      int id,
      double total_price});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
    Object? description = null,
    Object? image = null,
    Object? id = null,
    Object? total_price = null,
  }) {
    return _then(_$ItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      total_price: null == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {required this.name,
      required this.quantity,
      required this.price,
      required this.description,
      required this.image,
      required this.id,
      required this.total_price});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String name;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final String description;
  @override
  final String image;
  @override
  final int id;
  @override
  final double total_price;

  @override
  String toString() {
    return 'Item(name: $name, quantity: $quantity, price: $price, description: $description, image: $image, id: $id, total_price: $total_price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, quantity, price, description, image, id, total_price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final String name,
      required final int quantity,
      required final double price,
      required final String description,
      required final String image,
      required final int id,
      required final double total_price}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String get name;
  @override
  int get quantity;
  @override
  double get price;
  @override
  String get description;
  @override
  String get image;
  @override
  int get id;
  @override
  double get total_price;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
