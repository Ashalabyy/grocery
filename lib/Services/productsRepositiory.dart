// ignore: file_names
import '../models/product.dart';

abstract class ProductsRepositiory {
  Future<void> getProducts();
  Future<void> addProduct(Product product);
  Future<void> updateProduct(Product product);
  Future<Product> getProduct();
  Future<void> deleteProduct(Product product);
}
