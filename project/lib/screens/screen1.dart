// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, dead_code, unused_element, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:project/screens/HomeScreen.dart';
import 'package:project/screens/DrawerScreen.dart';
import 'package:project/screens/LogScreen.dart';
import 'package:project/screens/carsdetails.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {

  checkDevice(double width){
  if(width <= 576){  
     return 'mobile';
  }
 else if(width <= 768){
     return 'tablet';
  }
 else if(width <= 1024){
    return 'desktop';
  }
 else {
    return 'large' ;
  }     
  }
    var scrwidth = MediaQuery.of(context).size.width;
    var scrheight =  MediaQuery.of(context).size.height;

    var devicetype = checkDevice(scrwidth);


  Widget buildMainArea(){


    if (devicetype == 'mobile'){
      return Row(children: [
        Expanded(child:HomeScreen()),
        ]
      );
    }
    else if (devicetype == 'tablet'){
       return Row(children: [
        Expanded(child: DrawerScreen()),
        Expanded(child: HomeScreen()),
        ]
      );
    }
    else if (devicetype == 'desktop'){
      return Row(children: [
        Expanded(child: DrawerScreen()),
        Expanded(child: HomeScreen()),
        ]
      );
    }
    else{
       return Row(children: [
        Expanded(child: DrawerScreen()),
        Expanded(child: HomeScreen()),
        ]
      );
    }
  }
    
    return Scaffold(
      body: Column(children: [
        HomeScreen(),
        DrawerScreen(),
        Expanded(child: 
        buildMainArea()
          )
        ],
      ),
    );
  }

}