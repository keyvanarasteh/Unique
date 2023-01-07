// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, duplicate_ignore, sort_child_properties_last, unused_import, camel_case_types
import 'package:flutter/material.dart';
import 'package:project/screens/screen1.dart';
import 'package:project/screens/screenmenu.dart';


// ignore: camel_case_types
class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          AppBar(
            backgroundColor: Colors.transparent, elevation: 0.0,
        title:  
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(child: Row(
                children: [
                  Icon(Icons.location_pin,color:Colors.black,),
                  Text(" United Kingdom ",style: TextStyle(fontFamily:"Lato",color:Colors.black,fontSize: 15)),
                ],
              )),
            ),

        actions: <Widget>[
             CircleAvatar(
                        radius:25,
                        backgroundImage: AssetImage('images/avatar.png'),
                      ),
        ],
        leading: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(onPressed: () {Navigator.push(
                                  context,MaterialPageRoute(builder: (context) => const MenuScreen()),);}, icon: Icon(Icons.menu,color: Colors.black,) //Icon button ekledik         
          ),
            ],        
        ),
      ),          
         Expanded(flex: 5,                
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        children: [                     
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [             
                                Text("  Let's find a  ",style:TextStyle(
                                    color:Colors.black87,
                                    decoration: TextDecoration.none,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Lato",
                                    fontSize: 35,
                                  ),
                                ),
                                Text("sport ",style:TextStyle(
                                    color:Colors.black87,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.amber,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Lato",
                                    fontSize: 35
                                  ),
                                ),             
                              ],           
                            ),
                          ),                      
                              Row(
                               // ignore: prefer_const_literals_to_create_immutables
                               children: [
                                 Text("  car",style:TextStyle(
                                        color:Colors.black87,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.amber,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Lato",
                                        fontSize: 35
                                      ),
                                    ),
                                    Text("  for you",style:TextStyle(
                                        color:Colors.black87,
                                        decoration: TextDecoration.none,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Lato",
                                        fontSize: 35
                                      ),
                                    ),
                               ],
                             ),                      
                        ],
                      ),
                    ],
                  ),
                ),  
                Expanded(flex: 3,child: MyInputBox()), 
                Expanded(flex: 5,
                   child: ListView(
                    scrollDirection: Axis.horizontal,
                     children: [
                       Wrap(
                        direction: Axis.vertical,
                         children: [
                           Container(
                                        height: 50,
                                        width: 100,       
                                        child: Center(child: Text("Audi")),
                                        margin: const EdgeInsets.all(10),//Dışarıya müdahale eder (Kenarlara Boşluk)
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],//rengini değiştirir
                                          // ignore: prefer_const_literals_to_create_immutables                      
                                          shape: BoxShape.rectangle,//şekili daire yapar
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 100,       
                                        child: Center(child: Text("Cupra")),
                                        margin: const EdgeInsets.all(10),//Dışarıya müdahale eder (Kenarlara Boşluk)
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],//rengini değiştirir
                                          // ignore: prefer_const_literals_to_create_immutables                      
                                          shape: BoxShape.rectangle,//şekili daire yapar
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                      ),
                             Container(
                                        height: 50,
                                        width: 100,       
                                        child: Center(child: Text("Porsche")),
                                        margin: const EdgeInsets.all(10),//Dışarıya müdahale eder (Kenarlara Boşluk)
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],//rengini değiştirir
                                          // ignore: prefer_const_literals_to_create_immutables                      
                                          shape: BoxShape.rectangle,//şekili daire yapar
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 100,       
                                        child: Center(child: Text("Hyundai")),
                                        margin: const EdgeInsets.all(10),//Dışarıya müdahale eder (Kenarlara Boşluk)
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],//rengini değiştirir
                                          // ignore: prefer_const_literals_to_create_immutables                      
                                          shape: BoxShape.rectangle,//şekili daire yapar
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                      ),
                               Container(
                                        height: 50,
                                        width: 100,       
                                        child: Center(child: Text("BMW")),
                                        margin: const EdgeInsets.all(10),//Dışarıya müdahale eder (Kenarlara Boşluk)
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],//rengini değiştirir
                                          // ignore: prefer_const_literals_to_create_immutables                      
                                          shape: BoxShape.rectangle,//şekili daire yapar
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                      ),
                                 Container(
                                        height: 50,
                                        width: 100,       
                                        child: Center(child: Text("Mercedes")),
                                        margin: const EdgeInsets.all(10),//Dışarıya müdahale eder (Kenarlara Boşluk)
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],//rengini değiştirir
                                          // ignore: prefer_const_literals_to_create_immutables                      
                                          shape: BoxShape.rectangle,//şekili daire yapar
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 100,       
                                        child: Center(child: Text("Honda")),
                                        margin: const EdgeInsets.all(10),//Dışarıya müdahale eder (Kenarlara Boşluk)
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],//rengini değiştirir
                                          // ignore: prefer_const_literals_to_create_immutables                      
                                          shape: BoxShape.rectangle,//şekili daire yapar
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                      ),
                                Container(
                                        height: 50,
                                        width: 100,       
                                        child: Center(child: Text("Seat")),
                                        margin: const EdgeInsets.all(10),//Dışarıya müdahale eder (Kenarlara Boşluk)
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],//rengini değiştirir
                                          // ignore: prefer_const_literals_to_create_immutables                      
                                          shape: BoxShape.rectangle,//şekili daire yapar
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 100,       
                                        child: Center(child: Text("Skoda")),
                                        margin: const EdgeInsets.all(10),//Dışarıya müdahale eder (Kenarlara Boşluk)
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],//rengini değiştirir
                                          // ignore: prefer_const_literals_to_create_immutables                      
                                          shape: BoxShape.rectangle,//şekili daire yapar
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                      ),
                         ],
                       ),
                     ],
                   ),                              
            ),    
            Expanded(flex:2,child:
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(child: Text(" New Cars ")),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.blue[900]),child: Text(" More ",style: TextStyle(color: Colors.white),),),                         
                ],
              ),
             ),    
             Expanded(flex: 16,child: ListView(
              scrollDirection: Axis.vertical,
              children: [ Padding(
                          padding: const EdgeInsets.only(bottom:50),
                          child: ProductItem(
                            
                            productImage: 'images/rs7.jpg',
                            productName: 'Audi Rs7',
                            productDescription: 'London',                 
                            productPrice: '\$1.500.00 /day',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:50),
                          child: ProductItem(
                            productImage: 'images/e63s.jpg',
                            productName: 'Mercedes E 63S',
                            productDescription: 'Manchester',
                            productPrice: '\$1.200.00 /day',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:50),
                          child: ProductItem(
                            productImage: 'images/m5.jpg',
                            productName: 'BMW F90 M5',
                            productDescription: 'London',
                            productPrice: '\$2.000.00 /day',
                          ),
                        ),])
              ),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(" Scrool ")
                ],
                )
              )
          ]
        ),
     );
  }
}



class MyInputBox extends StatelessWidget {
  const MyInputBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search,),
          suffixIcon: Icon(Icons.list_rounded,),
          hintText: "Search a car..",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.amber,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ),
    );
  }
}
class ProductItem extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productPoint;
  final String productDescription;
  final String productPrice;

  const ProductItem({
    Key? key,
    this.productName = '',
    this.productDescription = '',
    this.productPrice = '',
    this.productPoint = '',
    this.productImage = '',
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 180,
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