import 'package:food_delivery_app/model/cart_item_model.dart';
import 'package:food_delivery_app/model/order_model.dart';
import 'package:get/get.dart';

class OrderViewModel extends GetxController {
  final List<Order> _orders = [];

  List<Order> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    _orders.insert(
        0,
        Order(
            id: DateTime.now().toString(),
            products: cartProducts,
            amount: total,
            dateTime: DateTime.now()));
    update();
  }
}
