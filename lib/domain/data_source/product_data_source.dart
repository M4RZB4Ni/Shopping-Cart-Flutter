// Import necessary files and packages for the productsDataSource.
import 'package:shopping_flutter/app/base/api_result.dart';
import 'package:shopping_flutter/domain/entities/photo/product.dart';

// Import the API result class and the search criteria entity.

// Abstract class defining the contract for a data source to fetch products.
abstract class ProductDataSource {
  // Method to fetch recent products.
  Future<ApiResult<Products>> getRecentProducts();

}
