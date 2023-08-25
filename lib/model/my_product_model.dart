class UserProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final double rating;
  final Map<String, dynamic>
      ratingInfo; // Rating information including rate and count
  UserProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
    required this.ratingInfo,
  });
  factory UserProductModel.fromjson(Map<String, dynamic> json) {
    return UserProductModel(
      id: json['id'],
      title: json['title'],
      price: (json['price'] as num).toDouble(),
      description: json['description'],
      image: json['image'],
      rating: (json['rating']['rate'] as num)
          .toDouble(), // Access 'rate' property within 'rating'
      ratingInfo: json['rating'], // Include the entire rating information
    );
  }
}
