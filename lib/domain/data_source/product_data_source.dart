// Import necessary files and packages for the productsDataSource.
import 'package:shopping_flutter/data/models/product/product_dto.dart';

// Import the API result class and the search criteria entity.
import '../../app/base/api_result.dart';

// Abstract class defining the contract for a data source to fetch products.
abstract class ProductDataSource {
  // Method to fetch recent products.
  Future<ApiResult<ProductResultDto>> getRecentproducts();

}
