
// Import the API result class and the product entity.
import 'package:shopping_flutter/domain/entities/photo/product.dart';

import '../../app/base/api_result.dart';


// Abstract class defining the contract for a repository to handle product-related operations.
abstract class ProductRepository {
  // Method to fetch recent products.
  Future<ApiResult<Products>> getRecentProducts();


}
