// Class implementing the productsRepository interface.
import 'package:shopping_flutter/app/base/api_result.dart';
import 'package:shopping_flutter/domain/data_source/product_data_source.dart';
import 'package:shopping_flutter/domain/entities/checkout/checkout_model.dart';
import 'package:shopping_flutter/domain/entities/product/product.dart';
import 'package:shopping_flutter/domain/repository/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductDataSource _dataSource;

  // Constructor for initializing the repository with a data source.
  ProductRepositoryImpl(this._dataSource);

  @override
  Future<ApiResult<Products>> getRecentProducts() async {
    // Delegate the call to the data source to get recent products.
    return await _dataSource.getRecentProducts();
  }

  @override
  Future<ApiResult<CheckoutModel>> checkOut({required var items}) async {
    return await _dataSource.checkOut(items: items);
  }
}
