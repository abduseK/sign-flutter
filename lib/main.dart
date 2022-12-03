// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/rounded_buttons.dart';
import 'signUP.dart';
import 'signIn.dart';
import 'new_pages/welcome_screen.dart';

void main() {
  runApp(
      MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    )
  );
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButtons(
              title: 'Welcome Screen',
              color: Colors.deepPurple,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome_Screen()));
              },
            )
          ]
        ),
      ),
      
    );
  }
}