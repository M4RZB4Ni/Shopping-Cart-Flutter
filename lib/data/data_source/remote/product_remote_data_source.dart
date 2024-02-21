import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shopping_flutter/app/base/api_result.dart';
import 'package:shopping_flutter/app/network/exception_handler.dart';
import 'package:shopping_flutter/app/network/network_client.dart';
import 'package:shopping_flutter/app/network/network_enums.dart';
import 'package:shopping_flutter/data/models/product/product_result_dto.dart';
import 'package:shopping_flutter/domain/data_source/product_data_source.dart';
import 'package:shopping_flutter/domain/entities/checkout/checkout_model.dart';
import 'package:shopping_flutter/domain/entities/product/product.dart';

/// Implementation of the productsDataSource as Remote data source
class ProductRemoteDataSource extends ProductDataSource {
  final NetworkClient _networkClient;

  // Constructor for initializing the remote data source with a network client.
  ProductRemoteDataSource(this._networkClient);

  @override
  Future<ApiResult<Products>> getRecentProducts() async {
    try {
      // Send a network request to get recent products using the API.
      final response = await _networkClient.sendRequest(
          "${dotenv.env['SERVER']}prod/products",
          requestType: HttpRequestType.GET);

      // Check if the response status indicates success.
      if (response.status) {
        // Print debug information about the result.
        debugPrint('products ${response.result['products'].runtimeType} ');

        // Deserialize the response result into a productResultDto.
        final productResultDto = ProductResultDto.fromJson(response.result);

        // Return a successful API result with the converted products entity.
        return ApiResult.success(data: Products.fromDto(productResultDto));
      }

      // Return a failed API result with the appropriate exception.
      return ApiResult.failure(
          error: ExceptionHandler.handleResponse(response.statusCode));
    } on ExceptionHandler catch (e) {
      // Return a failed API result with the caught exception.
      return ApiResult.failure(error: e);
    }
  }

  @override
  Future<ApiResult<CheckoutModel>> checkOut({required var items}) async {
    try {
      // Send a network request to get recent products using the API.
      final response = await _networkClient.sendRequest(
          "${dotenv.env['SERVER']}prod/checkout",
          bodyData: items,
          requestType: HttpRequestType.POST);

      // Check if the response status indicates success.
      if (response.status) {
        // Return a successful API result with the converted products entity.
        return ApiResult.success(data: CheckoutModel.fromJson(response.result));
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
