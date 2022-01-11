import 'package:food_delivery_app/model/cart_item_model.dart';

class Order {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  Order(
      {required this.id,
      required this.amount,
      required this.products,
      required this.dateTime});
}
