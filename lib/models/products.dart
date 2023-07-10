import 'product.dart';

class Products {
  final List<Product> allProducts;
  final List<Product> popularProducts;
  final List<Product> favoriteProducts;

  const Products({
    this.allProducts = const <Product>[],
    this.popularProducts = const <Product>[],
    this.favoriteProducts = const <Product>[],
  });

  Map<String, dynamic> toJson() {
    return {
      'allProducts': allProducts.map((product) => product.toJson()).toList(),
      'popularProducts': popularProducts
          .map((popularProduct) => popularProduct.toJson())
          .toList(),
      'favoriteProduct': favoriteProducts
          .map((favoriteProduct) => favoriteProduct.toJson())
          .toList(),
    };
  }

  factory Products.fromJson(Map<String, dynamic> jsonData) {
    return Products(
      allProducts: List<Product>.from(
          jsonData['allProducts']?.map((x) => Product.fromJson(x))),
      favoriteProducts: List<Product>.from(
          jsonData['favoriteProducts']?.map((x) => Product.fromJson(x))),
      popularProducts: List<Product>.from(
          jsonData['popularProducts']?.map((x) => Product.fromJson(x))),
    );
  }
}
