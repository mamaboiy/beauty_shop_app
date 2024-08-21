// product_model.dart
class ProductModel {
  final String title;
  final String description;
  final String imagePath;
  final double price;

  ProductModel({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.price,
  });
}

class Products{
  String name;
  String volume;
  String imgs;
  double price;
  String discription;
  String company;

  Products({
    required this.name,
    required this.volume,
    required this.imgs,
    required this.price,
    required this.discription,
    required this.company,
  });
}