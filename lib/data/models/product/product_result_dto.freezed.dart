// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductResultDto _$ProductResultDtoFromJson(Map<String, dynamic> json) {
  return _ProductResultDto.fromJson(json);
}

/// @nodoc
mixin _$ProductResultDto {
  int get statusCode => throw _privateConstructorUsedError;
  List<ProductDto> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResultDtoCopyWith<ProductResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResultDtoCopyWith<$Res> {
  factory $ProductResultDtoCopyWith(
          ProductResultDto value, $Res Function(ProductResultDto) then) =
      _$ProductResultDtoCopyWithImpl<$Res, ProductResultDto>;
  @useResult
  $Res call({int statusCode, List<ProductDto> products});
}

/// @nodoc
class _$ProductResultDtoCopyWithImpl<$Res, $Val extends ProductResultDto>
    implements $ProductResultDtoCopyWith<$Res> {
  _$ProductResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductResultDtoImplCopyWith<$Res>
    implements $ProductResultDtoCopyWith<$Res> {
  factory _$$ProductResultDtoImplCopyWith(_$ProductResultDtoImpl value,
          $Res Function(_$ProductResultDtoImpl) then) =
      __$$ProductResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, List<ProductDto> products});
}

/// @nodoc
class __$$ProductResultDtoImplCopyWithImpl<$Res>
    extends _$ProductResultDtoCopyWithImpl<$Res, _$ProductResultDtoImpl>
    implements _$$ProductResultDtoImplCopyWith<$Res> {
  __$$ProductResultDtoImplCopyWithImpl(_$ProductResultDtoImpl _value,
      $Res Function(_$ProductResultDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? products = null,
  }) {
    return _then(_$ProductResultDtoImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResultDtoImpl implements _ProductResultDto {
  _$ProductResultDtoImpl(
      {required this.statusCode, required final List<ProductDto> products})
      : _products = products;

  factory _$ProductResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResultDtoImplFromJson(json);

  @override
  final int statusCode;
  final List<ProductDto> _products;
  @override
  List<ProductDto> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductResultDto(statusCode: $statusCode, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResultDtoImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResultDtoImplCopyWith<_$ProductResultDtoImpl> get copyWith =>
      __$$ProductResultDtoImplCopyWithImpl<_$ProductResultDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResultDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductResultDto implements ProductResultDto {
  factory _ProductResultDto(
      {required final int statusCode,
      required final List<ProductDto> products}) = _$ProductResultDtoImpl;

  factory _ProductResultDto.fromJson(Map<String, dynamic> json) =
      _$ProductResultDtoImpl.fromJson;

  @override
  int get statusCode;
  @override
  List<ProductDto> get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductResultDtoImplCopyWith<_$ProductResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res, ProductDto>;
  @useResult
  $Res call(
      {String name,
      int quantity,
      double price,
      String description,
      String image,
      int id});
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res, $Val extends ProductDto>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDtoImplCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$ProductDtoImplCopyWith(
          _$ProductDtoImpl value, $Res Function(_$ProductDtoImpl) then) =
      __$$ProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int quantity,
      double price,
      String description,
      String image,
      int id});
}

/// @nodoc
class __$$ProductDtoImplCopyWithImpl<$Res>
    extends _$ProductDtoCopyWithImpl<$Res, _$ProductDtoImpl>
    implements _$$ProductDtoImplCopyWith<$Res> {
  __$$ProductDtoImplCopyWithImpl(
      _$ProductDtoImpl _value, $Res Function(_$ProductDtoImpl) _then)
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
  }) {
    return _then(_$ProductDtoImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDtoImpl implements _ProductDto {
  _$ProductDtoImpl(
      {required this.name,
      required this.quantity,
      required this.price,
      required this.description,
      required this.image,
      required this.id});

  factory _$ProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDtoImplFromJson(json);

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
  String toString() {
    return 'ProductDto(name: $name, quantity: $quantity, price: $price, description: $description, image: $image, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, quantity, price, description, image, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      __$$ProductDtoImplCopyWithImpl<_$ProductDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductDto implements ProductDto {
  factory _ProductDto(
      {required final String name,
      required final int quantity,
      required final double price,
      required final String description,
      required final String image,
      required final int id}) = _$ProductDtoImpl;

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$ProductDtoImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
