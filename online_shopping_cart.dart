class Product {
  // Private attributes
  String _productName;
  double _price;
  int _stock;

  // Constructor to initialize all attributes
  Product(this._productName, this._price, this._stock);

  // Getters
  String get productName => _productName;
  double get price => _price;
  int get stock => _stock;

  // Setters
  set price(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    } else {
      print("Error: Price must be positive.");
    }
  }

  set stock(int newStock) {
    if (newStock >= 0) {
      _stock = newStock;
    } else {
      print("Error: Stock cannot be negative.");
    }
  }

  // Method to sell products
  void sellProduct(int quantity) {
    if (quantity <= _stock) {
      _stock -= quantity;
      print("Successfully sold $quantity units of $_productName.");
    } else {
      print("Error: Insufficient stock to sell $quantity units.");
    }
  }

  // Method to restock products
  void restock(int quantity) {
    if (quantity > 0) {
      _stock += quantity;
      print("Successfully added $quantity units to stock of $_productName.");
    } else {
      print("Error: Restock quantity must be positive.");
    }
  }

  // Method to print product details
  void printProductDetails() {
    print("Product Name: $_productName");
    print("Price: \$${_price.toStringAsFixed(2)}");
    print("Stock: $_stock units\n");
  }
}

void main() {
  // Create product objects
  Product laptop = Product('Laptop', 1200.0, 10);

  // Print initial product details
  laptop.printProductDetails();

  // Simulate selling products
  laptop.sellProduct(3);
  laptop.printProductDetails();

  // Restock products
  laptop.restock(5);
  laptop.printProductDetails();

  // Update price using setter
  laptop.price = 1100.0;
  laptop.printProductDetails();

  // Demonstrate error cases
  laptop.price = -500.0; // Invalid price
  laptop.stock = -5; // Invalid stock
  laptop.sellProduct(20); // Insufficient stock
}
