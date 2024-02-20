import 'package:shopping_flutter/app/base/api_result.dart';
import 'package:shopping_flutter/data/models/product/product_dto.dart';
import 'package:shopping_flutter/domain/repository/product_repository.dart';




// Abstract interface defining the contract for a use case to handle product-related operations.
abstract interface class ProductUseCase {
  // Method to fetch recent products.
  Future<ApiResult<ProductResultDto>> getRecentproducts();

}

// Class implementing the productUseCase interface.
class ProductUseCaseImpl extends ProductUseCase {
  final ProductRepository _repository;

  // Constructor for initializing the use case with a repository.
  ProductUseCaseImpl(this._repository);

  @override
  Future<ApiResult<ProductResultDto>> getRecentproducts() async {
    // Delegate the call to the repository to get recent products.
    return await _repository.getRecentproducts();
  }

}
