// ignore_for_file: file_names, unused_import, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
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
      Container(
        decoration: BoxDecoration(gradient: const LinearGradient(colors:[Colors.lightBlueAccent,Colors.white]),),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(flex: 2,
                  child: Padding(
                        padding: const EdgeInsets.all(4),
                        child:Text(" Best Car Rental center",style: TextStyle(fontSize: 25 ,color:Colors.blueGrey[800],
                                          decoration: TextDecoration.none,
                                          fontStyle: FontStyle.normal,
                                          fontFamily: "Lato",),),
                        ),                    
                ),
                Expanded(flex: 2,
                  child: Padding(
                        padding: const EdgeInsets.all(4),
                        child:  TextButton(onPressed: () {Navigator.push(
                                        context,MaterialPageRoute(builder: (context) => const logScreen()),);}, child: Text("Back to Login") //Text button tanımladık
              ),
                      ),
                ),     
                    Expanded(flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child:  TextButton(onPressed: () {Navigator.push(
                                        context,MaterialPageRoute(builder: (context) => const detailsscreen()),);}, child: Text(" Car details ") //Text button tanımladık
              ),
                      ),
                    ), 
                     Expanded(flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child:  CupertinoButton(onPressed: () {Navigator.push(
                                        context,MaterialPageRoute(builder: (context) => const screen1()),);}, child: Text(" Back to Menu ") //CupertinoButton tanımladık
              ),
                      ),
                    ),                               
                   
                    Expanded(flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text(" - Sig in",style: TextStyle(fontSize: 20 ,color:Colors.black87,
                                        decoration: TextDecoration.none,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Lato",),),
                      ),
                    ),
                    Expanded(flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text(" - Contact information",style: TextStyle(fontSize: 20 ,color:Colors.black87,
                                        decoration: TextDecoration.none,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Lato",),),
                      ),
                    ),
                    Expanded(flex: 4,
                      child: 
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
                              child: Text('Welcome to the address of the best cars'),
                            ),
                          ),),                                   
                    ),
                Expanded(flex: 2,
                  child:  Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.grey.shade800,
                            child: const Text('UT'),
                          ),
                          label: const Text('Unique Team'),
                  ),),
                  Expanded(flex: 7,
                    child: CupertinoActionSheet(
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            /// This parameter indicates the action would be a default
            /// defualt behavior, turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(''),
          ),
          CupertinoActionSheetAction(
            onPressed: () {Navigator.push(
                context,MaterialPageRoute(builder: (context) => const screen1()),);},
            child: const Text('Menu'),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {Navigator.push(
                   context,MaterialPageRoute(builder: (context) => const detailsscreen()),);},
            child: const Text('Details'),
          ),
          ]
                    ),
                  )
              ],    
          ),
        ),
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
