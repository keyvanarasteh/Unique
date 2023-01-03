// ignore_for_file: file_names, unused_import, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:project/screens/homeScreen.dart';
import 'package:project/screens/screen1.dart';
import 'package:project/screens/logScreen.dart';
import 'package:project/screens/carsdetails.dart';
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(" Rent A Car ",style: TextStyle(fontSize: 20 ,color:Colors.black87,
                                  decoration: TextDecoration.none,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Lato",),),
                ),
            Padding(
                  padding: const EdgeInsets.all(4),
                  child:  TextButton(onPressed: () {Navigator.push(
                                  context,MaterialPageRoute(builder: (context) => const logScreen()),);}, child: Text(" Go back ") //Text button tanımladık
          ),
                ),     
                Padding(
                  padding: const EdgeInsets.all(4),
                  child:  TextButton(onPressed: () {Navigator.push(
                                  context,MaterialPageRoute(builder: (context) => const detailsscreen()),);}, child: Text(" Car details ") //Text button tanımladık
          ),
                ),                
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(" - Cars",style: TextStyle(fontSize: 20 ,color:Colors.black87,
                                  decoration: TextDecoration.none,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Lato",),),
                ),   
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(" - Maps",style: TextStyle(fontSize: 20 ,color:Colors.black87,
                                  decoration: TextDecoration.none,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Lato",),),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(" - Sig in",style: TextStyle(fontSize: 20 ,color:Colors.black87,
                                  decoration: TextDecoration.none,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Lato",),),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(" - Contact information",style: TextStyle(fontSize: 20 ,color:Colors.black87,
                                  decoration: TextDecoration.none,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Lato",),),
                ),
                Expanded(child: Container(width: 400,child: Image.asset("images/Ferrari-458.jpg"),)),
                Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('1 touch');
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 100,
                    child: Text('please touch the card'),
                  ),
                ),),
                Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: const Text('AB'),
                ),
                label: const Text('Adem Biyik'),
              )
          ],    
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_back_ios_rounded,color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,color: Colors.black,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
