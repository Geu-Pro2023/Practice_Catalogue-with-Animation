class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
  });
}

// Sample list of products
final List<Product> productList = [
  Product(
    name: 'Bright T-Shirt',
    imageUrl: 'https://example.com/image1.png',
    price: 19.99,
  ),
  Product(
    name: 'Cool Sneakers',
    imageUrl: 'https://example.com/image2.png',
    price: 59.99,
  ),
  Product(
    name: 'Stylish Hat',
    imageUrl: 'https://example.com/image3.png',
    price: 29.99,
  ),
  Product(
    name: 'Sporty Backpack',
    imageUrl: 'https://example.com/image4.png',
    price: 39.99,
  ),
  Product(
    name: 'Classic Sunglasses',
    imageUrl: 'https://example.com/image5.png',
    price: 49.99,
  ),
  // Add more products as needed
];