import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_store/main.dart'; // Ensure this points to your main.dart
import 'package:flutter_store/theme.dart'; // Correct import for theme.dart
import 'package:flutter_store/product.dart'; // Correct import for product.dart

void main() {
  // Sample product data for testing
  final List<Product> products = [
    Product(
      name: 'Product 1',
      imageUrl: 'https://example.com/image1.png',
      price: 29.99,
    ),
    Product(
      name: 'Product 2',
      imageUrl: 'https://example.com/image2.png',
      price: 39.99,
    ),
    // Add more products as needed
  ];

  testWidgets('Product card displays product name', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the product names are displayed.
    for (var product in products) {
      expect(find.text(product.name), findsOneWidget);
    }
  });

  testWidgets('Toggle theme button changes theme', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Initial theme should be light
    expect(find.byIcon(Icons.brightness_6), findsOneWidget);

    // Tap the toggle button
    await tester.tap(find.byIcon(Icons.brightness_6));
    await tester.pumpAndSettle();

    // After toggling, the icon should change to dark mode icon
    expect(find.byIcon(Icons.brightness_7), findsOneWidget);
  });

  testWidgets('Product card tap shows dialog', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Tap on the first product card
    await tester.tap(find.byType(GestureDetector).first);
    await tester.pumpAndSettle();

    // Verify that the dialog is displayed with the correct product name
    expect(find.text(products[0].name), findsOneWidget);
    expect(find.text('This is the product you selected.'), findsOneWidget);

    // Close the dialog
    await tester.tap(find.text('Close'));
    await tester.pumpAndSettle();
  });
}