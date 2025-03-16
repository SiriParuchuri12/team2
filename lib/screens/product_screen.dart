import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final Map<String, String> product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product["name"]!, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.asset(product["image"]!,
                      height: 200, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        product["name"]!,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            5,
                            (index) => Icon(Icons.star,
                                color: Colors.amber, size: 20)),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "₹99.99", // Indian Rupee Symbol
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Has 256 reviews",
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Free Delivery by Tomorrow",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "This is a great product with amazing features. Don't miss out on owning this wonderful item!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon:
                                Icon(Icons.shopping_cart, color: Colors.white),
                            label: Text("Add to Cart",
                                style: TextStyle(color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                            ),
                            child: Text("Buy Now",
                                style: TextStyle(color: Colors.white)),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite_border,
                                color: Colors.redAccent, size: 30),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Similar Products",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              5,
                              (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.grey[300],
                                          child: Icon(Icons.image, size: 50),
                                        ),
                                        SizedBox(height: 5),
                                        Text("Product ${index + 1}",
                                            style: TextStyle(fontSize: 14)),
                                      ],
                                    ),
                                  )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
