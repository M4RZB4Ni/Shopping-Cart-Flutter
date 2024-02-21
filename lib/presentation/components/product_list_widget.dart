// Import necessary packages and files.
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_flutter/app/extentions/extentions.dart';
import 'package:shopping_flutter/domain/entities/product/product.dart';

// Import the product entity and AppText resources.
import '../../app/resources/app_text.dart';

// Widget to display a list of products.
class ProductListWidget extends StatelessWidget {
  final Products products;
  final Function(int) onAddTap;
  // Constructor to initialize the widget with a list of products.
  const ProductListWidget(
      {super.key, required this.products, required this.onAddTap});

  @override
  Widget build(BuildContext context) {
    // Get the device height for dynamic sizing.
    final height = MediaQuery.of(context).size.height;

    // Check if the list of products is not empty.
    return products.productsList.isNotEmpty
        ? ListView.separated(
            itemCount: products.productsList.length,
            itemBuilder: (context, index) {
              // Get the product at the current index.
              final product = products.productsList[index];
              return ListTile(
                title: product.name.isNotEmpty
                    ? product.name
                        .toWidget() // Display the product title if available.
                    : AppText.titleNotFound
                        .toWidget(), // Display a default text if title is not available.
                leading: CachedNetworkImage(
                  height: 80.r,
                  width: 60.r,
                  fit: BoxFit.fill,
                  imageUrl: product.image,
                  placeholder: (context, url) => Lottie.asset(
                      'loading_img'.animation,
                      width: 70,
                      height: height * 0.50,
                      fit: BoxFit.fill),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add_shopping_cart),
                  onPressed: () => onAddTap(product.id),
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          )
        : Center(
            // Display a Lottie animation if the list of products is empty.
            child: Lottie.asset('nothing_found'.animation, fit: BoxFit.fill),
          );
  }
}
