// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, unnecessary_new, unused_label, dead_code, avoid_unnecessary_containers, duplicate_ignore, sort_child_properties_last

import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Current Location"),
        actions: <Widget>[
          new Icon(Icons.notifications_none)
        ],
        leading: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.location_on_outlined),
          ],
        ),
      ),
      
      body: Column(
        children: [
          SizedBox(height: 25),
          // Search Box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search here..",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.start ,
                    children: [Text("   House Near You",),
                    ],
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 225),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.end ,
                    children: [Text("View All",)               
                    ],
                ),
              ),
            ],
          ),

          SizedBox(height: 25),
        
          Container(
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ProductItem(                             
                              productImage: 'images/b3.jpeg',
                              productName: 'Bitung Resort',
                              productDescription: 'Bitung,Sulawesi Utara',                 
                              productPrice: '\$5.000.00',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ProductItem(
                              productImage: 'images/b2.jpg',
                              productName: 'Lembeh Resort',
                              productDescription: 'Bitung,Sulawesi Utara',
                              productPrice: '\$1.000.00',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ProductItem(
                              productImage: 'images/b1.jpg',
                              productName: 'Good Lesort',
                              productDescription: 'Bitung,Sulawesi Utara',
                              productPrice: '\$1.000.00',
                            ),
                          ),
                        ],
                      ),                                      
                  SizedBox(height: 60,)
                ],
              ),
            ),
          ),
          Expanded(child: ListView(
              scrollDirection: Axis.vertical,
              children: [
               Row(
            children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [Text(" Featured Listings"),
                          ],
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.only(left: 225),
                      child: Row(
                          mainAxisAlignment:MainAxisAlignment.end ,
                          children: [Text("View All",)               
                          ],
                      ),
                    ),
                  ],
                ),  
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ProductItem(                             
                  productImage: 'images/b4.jpeg',
                  productName: 'Japanase-style Hotel',
                  productDescription: 'Monado,Sulawesi Utara',                 
                  productPrice: '\$10.000.00',
                    ),
                 ),
              ],
            ),
          )
        ],
      ),
    );
    bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_activity_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmarks_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: '',
          ),
        ],
      );
  }
}

class ProductCategory extends StatelessWidget {
  final String categoryTitle;
  final bool isSelected;

  const ProductCategory(
      {Key? key, required this.categoryTitle, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(
        categoryTitle,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.grey : Colors.white,
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productDescription;
  final String productPrice;

  const ProductItem({
    Key? key,
    this.productName = '',
    this.productDescription = '',
    this.productPrice = '',
    this.productImage = '',
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(productImage),
            ),
            // Product Name
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 12.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 4),
                  // Product Description
                  Text(
                    productDescription,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
            // Product Price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(productPrice),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
