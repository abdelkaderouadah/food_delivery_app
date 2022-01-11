class RestaurantInfo {
  final int id;
  final String name;
  final String imageUrl;
  final String address;
  final List<String> tag;
  final double deliveryPrice;
  final String review;
  final String phone;
  bool isFavorite;
  RestaurantInfo({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.address,
    required this.tag,
    required this.deliveryPrice,
    required this.review,
    required this.phone,
    this.isFavorite = false,
  });
  // final List<Food> foods;

}

class Food {
  final int id;
  final String title;
  final String imageUrl;
  final String description;
  final String review;
  final double price;
  final List<String> additions;
  bool isFavorite;
  Food({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.review,
    required this.price,
    required this.additions,
    this.isFavorite = false,
  });
}
