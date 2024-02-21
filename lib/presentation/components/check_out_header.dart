import 'package:flutter/material.dart';
import 'package:shopping_flutter/app/extentions/extentions.dart';
import 'package:shopping_flutter/app/resources/app_text.dart';

class CheckoutHeader extends StatelessWidget {
  final double totalPrice;

  const CheckoutHeader({Key? key, required this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.totalPrice.toWidget(
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        '\$${totalPrice.toStringAsFixed(2)}'.toWidget(
            textStyle: const TextStyle(
                fontSize: 24,
                color: Colors.green,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}
