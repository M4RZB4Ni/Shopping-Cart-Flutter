// Class implementing the productsRepository interface.
import 'package:shopping_flutter/domain/data_source/product_data_source.dart';

import '../../app/base/api_result.dart';
import '../../domain/repository/product_repository.dart';
import '../models/product/product_dto.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductDataSource _dataSource;

  // Constructor for initializing the repository with a data source.
  ProductRepositoryImpl(this._dataSource);




  @override
  Future<ApiResult<ProductResultDto>> getRecentproducts() async {
    // Delegate the call to the data source to get recent products.
    return await _dataSource.getRecentproducts();
  }
}
