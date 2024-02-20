// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

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
  ProductsDto get products => throw _privateConstructorUsedError;

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
  $Res call({ProductsDto products});

  $ProductsDtoCopyWith<$Res> get products;
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
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as ProductsDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsDtoCopyWith<$Res> get products {
    return $ProductsDtoCopyWith<$Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
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
  $Res call({ProductsDto products});

  @override
  $ProductsDtoCopyWith<$Res> get products;
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
    Object? products = null,
  }) {
    return _then(_$ProductResultDtoImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as ProductsDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResultDtoImpl implements _ProductResultDto {
  _$ProductResultDtoImpl({required this.products});

  factory _$ProductResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResultDtoImplFromJson(json);

  @override
  final ProductsDto products;

  @override
  String toString() {
    return 'ProductResultDto(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResultDtoImpl &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, products);

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
  factory _ProductResultDto({required final ProductsDto products}) =
      _$ProductResultDtoImpl;

  factory _ProductResultDto.fromJson(Map<String, dynamic> json) =
      _$ProductResultDtoImpl.fromJson;

  @override
  ProductsDto get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductResultDtoImplCopyWith<_$ProductResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsDto _$ProductsDtoFromJson(Map<String, dynamic> json) {
  return _ProductsDto.fromJson(json);
}

/// @nodoc
mixin _$ProductsDto {
  List<ProductDto> get productsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsDtoCopyWith<ProductsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDtoCopyWith<$Res> {
  factory $ProductsDtoCopyWith(
          ProductsDto value, $Res Function(ProductsDto) then) =
      _$ProductsDtoCopyWithImpl<$Res, ProductsDto>;
  @useResult
  $Res call({List<ProductDto> productsList});
}

/// @nodoc
class _$ProductsDtoCopyWithImpl<$Res, $Val extends ProductsDto>
    implements $ProductsDtoCopyWith<$Res> {
  _$ProductsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsList = null,
  }) {
    return _then(_value.copyWith(
      productsList: null == productsList
          ? _value.productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsDtoImplCopyWith<$Res>
    implements $ProductsDtoCopyWith<$Res> {
  factory _$$ProductsDtoImplCopyWith(
          _$ProductsDtoImpl value, $Res Function(_$ProductsDtoImpl) then) =
      __$$ProductsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductDto> productsList});
}

/// @nodoc
class __$$ProductsDtoImplCopyWithImpl<$Res>
    extends _$ProductsDtoCopyWithImpl<$Res, _$ProductsDtoImpl>
    implements _$$ProductsDtoImplCopyWith<$Res> {
  __$$ProductsDtoImplCopyWithImpl(
      _$ProductsDtoImpl _value, $Res Function(_$ProductsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsList = null,
  }) {
    return _then(_$ProductsDtoImpl(
      productsList: null == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsDtoImpl implements _ProductsDto {
  const _$ProductsDtoImpl(
      {final List<ProductDto> productsList = const <ProductDto>[]})
      : _productsList = productsList;

  factory _$ProductsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsDtoImplFromJson(json);

  final List<ProductDto> _productsList;
  @override
  @JsonKey()
  List<ProductDto> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  @override
  String toString() {
    return 'ProductsDto(productsList: $productsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDtoImplCopyWith<_$ProductsDtoImpl> get copyWith =>
      __$$ProductsDtoImplCopyWithImpl<_$ProductsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductsDto implements ProductsDto {
  const factory _ProductsDto({final List<ProductDto> productsList}) =
      _$ProductsDtoImpl;

  factory _ProductsDto.fromJson(Map<String, dynamic> json) =
      _$ProductsDtoImpl.fromJson;

  @override
  List<ProductDto> get productsList;
  @override
  @JsonKey(ignore: true)
  _$$ProductsDtoImplCopyWith<_$ProductsDtoImpl> get copyWith =>
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
  const _$ProductDtoImpl(
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
  const factory _ProductDto(
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
