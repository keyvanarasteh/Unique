// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, use_full_hex_values_for_flutter_colors, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_string_escapes
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project/screens/screenmenu.dart';



class detailsscreen extends StatelessWidget {
  static var screenHeight;
  static var screenWidht;
  const detailsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenHeight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        bottom: true,
        left: true,
        right: true,
        top: true,
        
        child: (Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Expanded(flex: 10,
                child: Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/rs7.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 10.0,
                                  sigmaY: 10.0,
                                ),
                              ),
                            )
                          ],
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.all(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff141921),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back_ios_new,
                                  size: 20, color: Color(0xffaeaeae)),
                              onPressed: ()  {Navigator.push(
                                  context,MaterialPageRoute(builder: (context) => const MenuScreen()),);},
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff141921),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.favorite,
                                  size: 20, color: Color(0xffaeaeae)),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded( flex :2,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,  
                    children: [
                      Text(" New Cars"),
                        Row(
                          children: [
                            CircleAvatar(
                              radius:15,
                              backgroundImage: AssetImage('images/avatar.png'),                                            
                            ),
                            Text(" 4.5 "),                                 
                        Icon(Icons.star,color: Colors.amber,),
                          ],
                        ),      
                    ],
                  ),
                ),
              ),
              Expanded(flex: 4,child:
               Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.blue[900],borderRadius: BorderRadius.circular(5),),
                          child: Text("Overall",style: TextStyle(color: Colors.white)),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.all(6),
                         child: Container(
                          child: Text(" Car "),
                      ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(6),
                         child: Container(
                          child: Text(" Location "),
                      ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(6),
                         child: Container(
                          child: Text(" Reiews "),
                      ),
                       ),
                    ],
                  ),
                ),
               ),
               Expanded(flex: 5,child: ListView(
              scrollDirection: Axis.horizontal,
              children: [ Padding(
                          padding: const EdgeInsets.only(bottom:10),
                          child: ProductItem(
                            productName: '3.6s',               
                            productPrice: '0-100km/h',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:10),
                          child: ProductItem(
                            productName: '450km',
                            productPrice: 'Range',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:10),
                          child: ProductItem(
                            productName: '535',
                            productPrice: '\Trunk',
                          ),
                        ),])
              ),
              Expanded(flex: 8,child: Image.asset("images/Maps.jpg"))
            ],
          ),
        )),
      ),
    );
  }
}
class ProductItem extends StatelessWidget {
  final String productName;
  final String productPrice;

  const ProductItem({
    Key? key,
    this.productName = '',
    this.productPrice = '',
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 150,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Name
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 2,
                vertical: 2,
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
                ],
              ),
            ),
            // Product Price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:2),
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