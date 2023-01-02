// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, avoid_unnecessary_containers, unused_import, camel_case_types

import 'package:flutter/material.dart';
import 'package:project/screens/HomeScreen.dart';
import 'package:project/screens/screen1.dart';

class logScreen extends StatelessWidget {
  const logScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body:
         SafeArea(
          bottom: true,
          left: true,
          right: true,
          top: true,
          minimum: EdgeInsets.all(8.0),
           child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/ferrari.jpg"),
                fit: BoxFit.cover
              ),
            ),child:  Column(            
                // ignore: prefer_const_literals_to_create_immutables
                children: [     
                Expanded(flex: 3, child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [              
                    Container( padding: EdgeInsets.all(10),child: CircleAvatar(
                        radius:15,
                        backgroundImage: AssetImage('images/avatar.png'),
                      ),
                    ),
                  ],
                ),),           
                Expanded(
                    flex:12 ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [                     
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [             
                            Text("  Find the ",style:TextStyle(
                                color:Colors.black87,
                                decoration: TextDecoration.none,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Lato",
                                fontSize: 35,
                              ),
                            ),
                            Text("ideal ",style:TextStyle(
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
                         Row(
                           // ignore: prefer_const_literals_to_create_immutables
                           children: [
                             Text("  sport car for you",style:TextStyle(
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
                  ),                                                                                                
                    Expanded(
                      flex:14,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [  
                              Container(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text("  Get a great car at a",style:TextStyle(
                                          color:Colors.white,
                                          decoration: TextDecoration.none,
                                          fontFamily: "Lato",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 20,
                                          
                                        ),),
                                        Text(" great price",style:TextStyle(
                                          color:Colors.white,
                                          decoration: TextDecoration.underline,
                                          fontFamily: "Lato",
                                          decorationColor: Colors.amber,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 20
                                        ),),
                                      ],
                                    ),
                                  ),                    
                              Container(
                                        padding: EdgeInsets.symmetric(horizontal: 5),
                                        child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child:ElevatedButton(onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const screen1()),
                                );}, child: Row( 
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Row(
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                Container(child: Text("Get started ",style: TextStyle(fontFamily: "Lato",fontStyle: FontStyle.normal,),)),
                                                Container(child: Icon(Icons.arrow_circle_right_outlined), ),
                                              ],
                                            )
                                          ],
                                        ) ,style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),backgroundColor:MaterialStateProperty.all(Colors.blue[900]))
                                      ),
                                      )
                                   ),                          
                                Container(
                                   padding: EdgeInsets.all(5),
                                   child: Row(
                                     // ignore: prefer_const_literals_to_create_immutables
                                     children: [
                                       Text("   Already have an a account ",style:TextStyle(
                                                    color:Colors.white,
                                                    decoration: TextDecoration.none,
                                                    fontFamily: "Lato",
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 12
                                                  ),),
                                       Text(" Sing in ",style:TextStyle(
                                                    color:Colors.amber,
                                                    decoration: TextDecoration.none,
                                                    fontFamily: "Lato",
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 12
                                                  ),),
                                     ],
                                   ),
                                 ),
                            ],                     
                      ),
                    ),                           
                ],
              ),
                 
        ),
         ),
    );
  }

}
