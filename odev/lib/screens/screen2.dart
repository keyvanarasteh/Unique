// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:odev/screens/screen1.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
          Image.asset("images/b5.jpeg"
          ),
          SizedBox(height: 20),
          Text("Discover and Find Your Perfect Healing Place ",textAlign: TextAlign.center,style: TextStyle(fontSize:35,fontStyle: FontStyle.italic,letterSpacing:2, fontWeight: FontWeight.w600, ),
          ),
          SizedBox(height: 10),
          Text("Ehealis No.1 App to search and discover the most suitable place for you stay .",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
          SizedBox(height: 40),
          ElevatedButton(onPressed: () {}, child: Text("Save") ,style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey), padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 140)),),
          ),
          SizedBox(height: 10),
          Text("AlReady have an account?", textAlign: TextAlign.center,),          
          TextButton(onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const screen1()),
            );}, child: Text("Log In"),style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.red)),
          ), 
        ],      
      ),     
    );
  }
}