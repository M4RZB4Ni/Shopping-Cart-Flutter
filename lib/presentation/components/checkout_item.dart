import 'package:flutter/material.dart';
import 'package:shopping_flutter/app/extentions/extentions.dart';
import 'package:shopping_flutter/domain/entities/checkout/checkout_model.dart';

class CheckoutItemWidget extends StatelessWidget {
  final Item item;

  const CheckoutItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: item.name.toWidget(),
      subtitle: 'Quantity: ${item.quantity}'.toWidget(),
      trailing: '\$${item.total_price.toStringAsFixed(2)}'.toWidget(),
    );
  }
}
