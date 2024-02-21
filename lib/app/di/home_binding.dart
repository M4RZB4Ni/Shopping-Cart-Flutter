import 'package:get/get.dart';
import 'package:shopping_flutter/app/network/network_client.dart';
import 'package:shopping_flutter/data/data_source/remote/product_remote_data_source.dart';
import 'package:shopping_flutter/data/repository/product_repository_impl.dart';
import 'package:shopping_flutter/domain/data_source/product_data_source.dart';
import 'package:shopping_flutter/domain/repository/product_repository.dart';
import 'package:shopping_flutter/domain/usecase/basket/checkout_usecase.dart';
import 'package:shopping_flutter/domain/usecase/product/product_usecase.dart';
import 'package:shopping_flutter/presentation/checkout/checkout_view_model.dart';
import 'package:shopping_flutter/presentation/home/home_view_model.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewModel>(() => HomeViewModel(Get.find<ProductUseCase>()),
        fenix: true);

    Get.lazyPut<CheckOutViewModel>(
        () => CheckOutViewModel(Get.find<CheckoutUseCase>()),
        fenix: true);

    Get.lazyPut<CheckoutUseCase>(
        () => CheckoutUseCaseImpl(Get.find<ProductRepository>()),
        fenix: true);

    Get.lazyPut<ProductUseCase>(
        () => ProductUseCaseImpl(Get.find<ProductRepository>()),
        fenix: true);
    Get.lazyPut<ProductRepository>(
        () => ProductRepositoryImpl(Get.find<ProductDataSource>()),
        fenix: true);
    Get.lazyPut<ProductDataSource>(
        () => ProductRemoteDataSource(Get.find<NetworkClient>()),
        fenix: true);
  }
}
