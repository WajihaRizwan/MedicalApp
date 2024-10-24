import 'package:flutter/material.dart';
import 'package:medicalapp/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CartScreen(),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your cart'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2 Items in your cart',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                // Add more items
              },
              child: Text(
                '+ Add more',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  CartItem(
                    productName: 'Sugar free gold',
                    productDescription: 'bottle of 500 pellets',
                    price: 25,
                    quantity: 1,
                  ),
                  CartItem(
                    productName: 'Sugar free gold',
                    productDescription: 'bottle of 500 pellets',
                    price: 18,
                    quantity: 1,
                  ),
                ],
              ),
            ),
            Divider(),
            PaymentSummary(),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                   Navigator.push(context,
          MaterialPageRoute(builder: (context) => Profile(),
        ));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child: Text(
                  'Place Order',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String productName;
  final String productDescription;
  final double price;
  final int quantity;

  CartItem({
    required this.productName,
    required this.productDescription,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8.0),
            ),
            // Placeholder for product image
            child: Icon(Icons.image, size: 40, color: Colors.grey[700]),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  productDescription,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Rs.${price.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  // Decrease quantity
                },
                icon: Icon(Icons.remove_circle_outline, color: Colors.blue),
              ),
              Text('$quantity'),
              IconButton(
                onPressed: () {
                  // Increase quantity
                },
                icon: Icon(Icons.add_circle_outline, color: Colors.blue),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              // Remove item
            },
            icon: Icon(Icons.close, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class PaymentSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Summary',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        PaymentSummaryRow(label: 'Order Total', value: '228.80'),
        PaymentSummaryRow(label: 'Items Discount', value: '-28.80'),
        PaymentSummaryRow(label: 'Coupon Discount', value: '-15.80'),
        PaymentSummaryRow(label: 'Shipping', value: 'Free'),
        Divider(),
        PaymentSummaryRow(label: 'Total', value: 'Rs.185.00', isTotal: true),
      ],
    );
  }
}

class PaymentSummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  PaymentSummaryRow({
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Colors.black : Colors.grey,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
