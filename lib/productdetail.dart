import 'package:flutter/material.dart';
import 'package:medicalapp/cart.dart';

class Productdetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product title and subtitle
              Text(
                'Sugar Free Gold Low Calories',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Etiam mollis metus non purus',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 16),

              // Product image
             Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "assets/Mask Group.png",
                        
                      ),
                    ),
                  
                  ],
                ),
              ),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rs.99 Rs.56',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Add to Cart'),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Package size options
              Text(
                'Package size',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ChoiceChip(
                    label: Text('Rs.106\n500 pellets'),
                    selected: true,
                  ),
                  ChoiceChip(
                    label: Text('Rs.166\n110 pellets'),
                    selected: false,
                  ),
                  ChoiceChip(
                    label: Text('Rs.252\n300 pellets'),
                    selected: false,
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Product Details
              Text(
                'Product Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus'
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi'
                 'Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus'
                 'Etiam et nisi aliquet, accumsan nisi sit'
              ),
        
              
              SizedBox(height: 16),

              // Ingredients
              Text(
                'Ingredients',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibusInterdum et malesuada fames ac ante ipsum primis in faucibus'
                ' Morbi ut nisi odio. Nulla facilisi'
                  'Nunc risus massa, gravida id egestas a, pretium vel tellus'
                  'Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 16),

              // Expiry date and brand
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Expiry Date: 25/12/2023'),
                  Text('Brand Name: Something'),
                ],
              ),
              SizedBox(height: 16),

              // Rating and reviews
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4.4',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('923 Ratings and 257 Reviews'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('67%'),
                      Text('5 Star'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Review
              ListTile(
                leading: Icon(Icons.star, color: Colors.yellow),
                title: Text('Erric Hoffman'),
                subtitle: Text(
                  'Interdum et malesuada fames ac ante ipsum primis'
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi'
                'Nunc risus massa, gravida id egestas'
                ),
                trailing: Text('05-oct-2020'),
              ),

              // Go to cart button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(context,
          MaterialPageRoute(builder: (context) => CartScreen(),
        ));
                  },
                  child: Text('GO TO CART'),
                
                ),
              ),
            
          ]),
        ),
      ));
    
  }
}
