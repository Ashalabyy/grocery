// ignore: file_names
class Product {
  final String title;
  final String description;
  final double price;
  final String id;
  final String imageUrl;
  bool? isPopular;
  bool? isFavorite;

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.id,
    required this.imageUrl,
    this.isPopular,
    this.isFavorite,
  }) {
    isPopular = isPopular ?? false;
    isFavorite = isFavorite ?? false;
  }

  Product copyWith({
    String? title,
    String? description,
    double? price,
    String? imageUrl,
    String? id,
    bool? isPopular,
    bool? isFavorite,
  }) {
    return Product(
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      id: id ?? this.id,
      isPopular: isPopular ?? this.isPopular,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'id': id,
      'isPopular': isPopular,
      'isFavorite': isFavorite,
    };
  }

  factory Product.fromJson(Map<String, dynamic> jsonData) {
    return Product(
      title: jsonData['title'] ?? '',
      description: jsonData['description'] ?? '',
      price: jsonData['price'] ?? '',
      imageUrl: jsonData['imageUrl'] ?? '',
      id: jsonData['id'] ?? '',
      isPopular: jsonData['isPopular'],
      isFavorite: jsonData['isFavorite'],
    );
  }
}
