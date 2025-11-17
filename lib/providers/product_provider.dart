import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  int get totalProducts => _products.length;

  // Obtener productos con stock bajo (<=5)
  List<Product> get lowStockProducts =>
      _products.where((p) => p.stock <= 5 && p.stock > 0).toList();

  // Obtener productos sin stock
  List<Product> get outOfStockProducts =>
      _products.where((p) => p.stock == 0).toList();

  Future<void> loadProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('products');
    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);
      _products = jsonList.map((json) => Product.fromJson(json)).toList();
      notifyListeners();
    }
  }

  Future<void> _saveProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = json.encode(_products.map((p) => p.toJson()).toList());
    await prefs.setString('products', jsonString);
  }

  Future<void> addProduct(Product product) async {
    _products.add(product);
    await _saveProducts();
    notifyListeners();
  }

  Future<void> updateProduct(Product product) async {
    final index = _products.indexWhere((p) => p.id == product.id);
    if (index != -1) {
      _products[index] = product;
      await _saveProducts();
      notifyListeners();
    }
  }

  Future<void> deleteProduct(String id) async {
    _products.removeWhere((p) => p.id == id);
    await _saveProducts();
    notifyListeners();
  }

  Product? getProductById(String id) {
    try {
      return _products.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }

  /// Verifica si hay suficiente stock para una cantidad específica
  bool hasEnoughStock(String productId, int requestedQuantity) {
    final product = getProductById(productId);
    if (product == null) return false;
    return product.stock >= requestedQuantity;
  }

  /// Reduce el stock de un producto
  Future<bool> reduceStock(String productId, int quantity) async {
    final product = getProductById(productId);
    if (product == null || product.stock < quantity) {
      return false;
    }

    final updatedProduct = product.copyWith(
      stock: product.stock - quantity,
    );

    await updateProduct(updatedProduct);
    return true;
  }

  /// Aumenta el stock de un producto (útil para cancelaciones)
  Future<void> increaseStock(String productId, int quantity) async {
    final product = getProductById(productId);
    if (product == null) return;

    final updatedProduct = product.copyWith(
      stock: product.stock + quantity,
    );

    await updateProduct(updatedProduct);
  }

  /// Valida el stock de múltiples productos
  /// Retorna null si todo está bien, o un mensaje de error si hay problemas
  String? validateStock(List<Map<String, dynamic>> items) {
    for (final item in items) {
      final productId = item['productId'] as String;
      final quantity = item['quantity'] as int;
      final product = getProductById(productId);

      if (product == null) {
        return 'Producto no encontrado';
      }

      if (product.stock < quantity) {
        return 'Stock insuficiente para ${product.name}. '
            'Disponible: ${product.stock}, Solicitado: $quantity';
      }
    }
    return null;
  }

  /// Reduce el stock de múltiples productos (usado al crear boleta)
  Future<bool> reduceStockBatch(List<Map<String, dynamic>> items) async {
    // Primero validar que todo esté disponible
    final error = validateStock(items);
    if (error != null) {
      return false;
    }

    // Reducir stock de cada producto
    for (final item in items) {
      final productId = item['productId'] as String;
      final quantity = item['quantity'] as int;
      await reduceStock(productId, quantity);
    }

    return true;
  }
}