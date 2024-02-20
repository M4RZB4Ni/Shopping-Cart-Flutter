
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shopping_flutter/domain/data_source/product_data_source.dart';
import 'package:shopping_flutter/domain/entities/product/product.dart';

import '../../../app/base/api_result.dart';
import '../../../app/network/exception_handler.dart';
import '../../../app/network/network_client.dart';
import '../../../app/network/network_enums.dart';
import '../../models/product/product_dto.dart';

/// Implementation of the productsDataSource as Remote data source
class ProductRemoteDataSource extends ProductDataSource {
  final NetworkClient _networkClient;

  // Constructor for initializing the remote data source with a network client.
  ProductRemoteDataSource(this._networkClient);

  @override
  Future<ApiResult<ProductResultDto>> getRecentproducts() async {
    try {
      // Send a network request to get recent products using the Flickr API.
      final response = await _networkClient.sendRequest(
          "${dotenv.env['SERVER']}?method=flickr.products.getRecent&api_key=${dotenv.env['API_KEY']}",
          requestType: HttpRequestType.GET);

      // Check if the response status indicates success.
      if (response.status) {
        // Print debug information about the result.
        debugPrint('result ${response.result}');

        // Deserialize the response result into a productResultDto.
        final productResultDto = ProductResultDto.fromJson(response.result);

        // Return a successful API result with the converted products entity.
        return ApiResult.success(data:productResultDto);
      }

      // Return a failed API result with the appropriate exception.
      return ApiResult.failure(
          error: ExceptionHandler.handleResponse(response.statusCode));
    } on ExceptionHandler catch (e) {
      // Return a failed API result with the caught exception.
      return ApiResult.failure(error: e);
    }
  }

}
