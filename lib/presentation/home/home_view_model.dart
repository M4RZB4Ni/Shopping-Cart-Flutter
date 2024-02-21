// Import necessary packages and files.

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopping_flutter/app/base/base_controller.dart';
import 'package:shopping_flutter/app/resources/app_text.dart';
import 'package:shopping_flutter/domain/entities/product/product.dart';
import 'package:shopping_flutter/domain/usecase/product/product_usecase.dart';
import 'package:shopping_flutter/presentation/checkout/checkout_screen.dart';
import 'package:shopping_flutter/presentation/checkout/checkout_view_model.dart';

// View model for the HomeScreen, extending BaseController.
class HomeViewModel extends BaseController {
  // Instance of the productUseCase for handling product-related operations.
  final ProductUseCase _productUseCase;

  // Constructor to initialize the view model with a productUseCase.
  HomeViewModel(this._productUseCase);

  // Controller for handling search functionality.
  final _searchController = TextEditingController();

  // Observable for storing the list of products.
  final _products = Products(productsList: []).obs;

  final _cart = <Map<String, dynamic>>[].obs;

  // Observable for tracking the loading state.
  final _isLoading = true.obs;

  // Getter for accessing the loading state.
  RxBool get isLoading => _isLoading;

  // Getter for accessing the list of products.
  Rx<Products> get products => _products;

  // Getter for accessing the search controller.
  TextEditingController get searchController => _searchController;

  // Getter for accessing the cart of user.
  RxList<Map<String, dynamic>> get cart => _cart;

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

  void updateEntity({required int id}) {
    var product = products.value.productsList
        .firstWhereOrNull((product) => product.id == id);
    if (product == null || product.quantity <= 0) {
      Get.snackbar(AppText.product, AppText.notAvailable);
    } else {
      final updatedProduct = product.copyWith(quantity: product.quantity - 1);
      final int index = products.value.productsList.indexOf(product);
      products.value.productsList[index] = updatedProduct;
      addToCart(productID: updatedProduct.id);
    }
  }

  void addToCart({required int productID}) {
    var existingProduct =
        _cart.firstWhereOrNull((element) => element['product_id'] == productID);
    if (existingProduct != null) {
      // If the product exists, update the quantity and show a snackbar
      existingProduct['quantity'] = (existingProduct['quantity'] ?? 0) + 1;
      Get.snackbar(AppText.product, AppText.addedAgain);
    } else {
      // If the product doesn't exist, add it to the cart and show a snackbar
      _cart.add({"quantity": 1, "product_id": productID});
      Get.snackbar(AppText.product, AppText.added);
    }
  }

  void goToNextCheckoutScreen() {
    if (_cart.isEmpty) return;
    // var sendCartData= jsonEncode(_cart);
    // debugPrint('converted response--> $sendCartData');
    Get.toNamed(CheckOutScreen.url, arguments: _cart.value)
        ?.then((value) => Get.delete<CheckOutViewModel>());
  }
}
