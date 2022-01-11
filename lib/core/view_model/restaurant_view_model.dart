import 'package:food_delivery_app/model/restaurant_model.dart';
import 'package:get/get.dart';

class RestaurantViewModel extends GetxController {
  List<Food> get items {
    return [..._items];
  }

  List<Food> get favouriteItems {
    return _items.where((foodItem) => foodItem.isFavorite).toList();
  }

  Food findFoodById(int id) {
    return _items.firstWhere((element) => element.id == id);
  }

  void addFood() {
    update();
  }

  void toggleFavouriteStatus(int id) {
    items[id].isFavorite = !items[id].isFavorite;
    update();
  }

  final List<Food> _items = [
    Food(
      id: 1,
      title: "salmon salad",
      imageUrl: "imageUrl",
      description: "description",
      review: "3.5",
      price: 10.35,
      additions: ["", "", ""],
    ),
    Food(
      id: 2,
      title: "Chicken Hawaiian",
      imageUrl: "imageUrl",
      description: "description",
      review: "3.5",
      price: 10.35,
      additions: ["", "", ""],
    ),
    Food(
      id: 2,
      title: "Grand Beef Tacos",
      imageUrl: "imageUrl",
      description: "description",
      review: "3.5",
      price: 9.55,
      additions: ["pepper julienned", "baby spinach", "Masroom"],
    ),
  ];

  List<RestaurantInfo> get restaurants {
    return [..._restaurants];
  }

  List<RestaurantInfo> get favoriteRestaurants {
    return _restaurants.where((restaurant) => restaurant.isFavorite).toList();
  }

  RestaurantInfo findRestaurantById(int id) {
    return _restaurants.firstWhere((element) => element.id == id);
  }

  void toggleFavoriteRestaurant(int id) {
    restaurants[id].isFavorite = !restaurants[id].isFavorite;
    update();
  }

  final List<RestaurantInfo> _restaurants = [
    RestaurantInfo(
      id: 1,
      name: "Starbuck",
      imageUrl: "imageUrl",
      address: "address",
      deliveryPrice: 5,
      tag: ["Coffee", "Drinks"],
      review: "4.2",
      phone: "phone",
    ),
    RestaurantInfo(
      id: 2,
      name: "Pizza Hut",
      imageUrl: "imageUrl",
      address: "address",
      tag: ["PIZZA", "FAST FOOD"],
      review: "4.5",
      phone: "phone",
      deliveryPrice: 0,
    ),
    RestaurantInfo(
      id: 3,
      name: "Jimmy John's",
      imageUrl: "imageUrl",
      address: "address",
      tag: ["BURGER", "CHICKEN"],
      review: "4.5",
      phone: "phone",
      deliveryPrice: 0,
    ),
    RestaurantInfo(
      id: 4,
      name: "Burger King",
      imageUrl: "imageUrl",
      address: "address",
      tag: ["BURGER", "CHICKEN"],
      review: "4.8",
      phone: "phone",
      deliveryPrice: 0,
    ),
    RestaurantInfo(
      id: 5,
      name: "Subway",
      imageUrl: "imageUrl",
      address: "address",
      tag: ["SNACKS", "CHICKEN"],
      review: "4.1",
      phone: "phone",
      deliveryPrice: 0,
    ),
    RestaurantInfo(
      id: 6,
      name: "KFC",
      imageUrl: "imageUrl",
      address: "address",
      tag: ["SNACKS", "CHICKEN"],
      review: "4.9",
      phone: "phone",
      deliveryPrice: 3,
    ),
  ];
}
