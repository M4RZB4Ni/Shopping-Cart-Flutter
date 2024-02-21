import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_flutter/app/base/base_controller.dart';
import 'package:shopping_flutter/domain/entities/checkout/checkout_model.dart';
import 'package:shopping_flutter/domain/usecase/basket/checkout_usecase.dart';

class CheckOutViewModel extends BaseController {
  // Instance of the checkoutUseCase for handling basket-related operations.
  final CheckoutUseCase _checkoutUseCase;

  // Constructor to initialize the view model with a checkoutUseCase.
  CheckOutViewModel(this._checkoutUseCase);

  // Observable for tracking the loading state.
  final _isLoading = true.obs;

  // Getter for accessing the loading state.
  RxBool get isLoading => _isLoading;

  final _checkoutModel = const CheckoutModel(
      statusCode: 0, checkout: Checkout(total_price: 0.0, items: [])).obs;

  Rx<CheckoutModel> get checkoutModel => _checkoutModel;

  var cardSendData = Get.arguments;
  // Override the onInit method to perform initial operations when the view model is initialized.
  @override
  void onInit() async {
    super.onInit();
    await getCheck();
  }

  Future<void> getCheck() async {
    final result = await _checkoutUseCase.checkOut(items: cardSendData);
    result.when(
      success: (data) {
        debugPrint('data of basket:$data');
        _isLoading.value = false;
        _checkoutModel.value = data;
      },
      failure: (error) {
        _isLoading.value = true;
      },
    );
  }
}
