// Import necessary packages and files.

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopping_flutter/app/base/base_controller.dart';
import 'package:shopping_flutter/domain/entities/photo/product.dart';
import 'package:shopping_flutter/domain/usecase/photo/product_usecase.dart';

// View model for the HomeScreen, extending BaseController.
class HomeViewModel extends BaseController {
  // Instance of the productUseCase for handling product-related operations.
  final ProductUseCase _productUseCase;

  // Constructor to initialize the view model with a productUseCase.
  HomeViewModel(this._productUseCase);

  // Controller for handling search functionality.
  final _searchController = TextEditingController();

  // Observable for storing the list of products.
  final _products = const Products(productsList: []).obs;

  // Observable for tracking the loading state.
  final _isLoading = true.obs;

  // Getter for accessing the loading state.
  RxBool get isLoading => _isLoading;

  // Getter for accessing the list of products.
  Rx<Products> get products => _products;

  // Getter for accessing the search controller.
  TextEditingController get searchController => _searchController;

  // Override the onInit method to perform initial operations when the view model is initialized.
  @override
  void onInit() async {
    super.onInit();
    await getRecentProducts();
  }

  // Method to fetch recent products using the productUseCase.
  Future<void> getRecentProducts() async {
    final result = await _productUseCase.getRecentProducts();
    result.when(
      success: (data) {
        _isLoading.value = false;
        _products.value = data;
      },
      failure: (error) {
        _isLoading.value = true;
      },
    );
  }



}
