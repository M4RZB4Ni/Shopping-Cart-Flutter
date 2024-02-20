
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_flutter/app/base/base_view.dart';
import 'package:shopping_flutter/app/extentions/extentions.dart';
import 'package:shopping_flutter/app/resources/app_colors.dart';
import 'package:shopping_flutter/presentation/components/product_list_widget.dart';
import 'package:shopping_flutter/presentation/components/skeleton_list.dart';
import 'package:shopping_flutter/presentation/home/home_view_model.dart';

// HomeScreen widget, extending BaseView and associated with HomeViewModel.
class HomeScreen extends BaseView<HomeViewModel> {
  // Define the route URL for navigation.
  static const String url = "/home";

  // Constructor for HomeScreen.
  HomeScreen({super.key});


  // Override the body method to define the main content of the screen.
  @override
  Widget body(BuildContext context) {
    return Obx(
      () {
        // Display either a skeleton list or the actual productList based on loading state.
        if (controller.isLoading.isTrue) {
          return const SkeletonList();
        } else {
          return LiquidPullToRefresh(
              height: 50,
              showChildOpacityTransition: false,
              onRefresh: () => controller.getRecentproducts(),
              child: ProductListWidget(products: controller.products.value));
        }
      },
    );
  }

  // Override the noInternetWidget method to display a Lottie animation for no internet.
  @override
  Widget noInternetWidget() {
    return Lottie.asset('no_internet'.animation);
  }

  // Override the pageBackgroundColor method to define the background color of the screen.
  @override
  Color pageBackgroundColor() {
    return AppColors.surface;
  }
}
