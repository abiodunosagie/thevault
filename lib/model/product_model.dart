class ProductModel {
  final int pid;
  final String imgUrl;
  final String title;
  final String price;
  final String shortDescription;
  final String longDescription;
  final int reviews;
  final double rating;
  bool isSelected;
  int qty;

  ProductModel({
    required this.pid,
    required this.imgUrl,
    required this.title,
    required this.price,
    required this.shortDescription,
    required this.longDescription,
    required this.reviews,
    required this.rating,
    this.isSelected = false,
    this.qty = 1,
  });
}
