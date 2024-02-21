import 'package:shopping_flutter/app/base/api_result.dart';
import 'package:shopping_flutter/domain/entities/checkout/checkout_model.dart';
import 'package:shopping_flutter/domain/repository/product_repository.dart';

abstract interface class CheckoutUseCase {
  Future<ApiResult<CheckoutModel>> checkOut({required var items});
}

class CheckoutUseCaseImpl implements CheckoutUseCase {
  final ProductRepository _repository;

  // Constructor for initializing the use case with a repository.
  CheckoutUseCaseImpl(this._repository);

  @override
  Future<ApiResult<CheckoutModel>> checkOut({required var items}) async {
    return await _repository.checkOut(items: items);
  }
}
