import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:shopping_flutter/app/base/base_view.dart';
import 'package:shopping_flutter/app/extentions/extentions.dart';
import 'package:shopping_flutter/app/resources/app_text.dart';
import 'package:shopping_flutter/domain/entities/checkout/checkout_model.dart';
import 'package:shopping_flutter/presentation/checkout/checkout_view_model.dart';
import 'package:shopping_flutter/presentation/components/check_out_header.dart';
import 'package:shopping_flutter/presentation/components/checkout_item.dart';
import 'package:shopping_flutter/presentation/components/skeleton_list.dart';

class CheckOutScreen extends BaseView<CheckOutViewModel> {
  static const String url = "/checkout";

  CheckOutScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: AppText.checkOutPageTitle.toWidget(),
    );
  }

  @override
  Widget body(BuildContext context) {
    return Obx(
      () {
        if (controller.isLoading.isTrue) {
          return const SkeletonList();
        } else {
          return LiquidPullToRefresh(
            height: 50,
            showChildOpacityTransition: false,
            onRefresh: () async {
              // Add refresh logic here if needed
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckoutHeader(
                    totalPrice:
                        controller.checkoutModel.value.checkout.total_price),
                const SizedBox(height: 16),
                AppText.items.toWidget(),
                Expanded(
                  child: ListView.builder(
                    itemCount:
                        controller.checkoutModel.value.checkout.items.length,
                    itemBuilder: (context, index) {
                      Item item =
                          controller.checkoutModel.value.checkout.items[index];
                      return CheckoutItemWidget(item: item);
                    },
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
