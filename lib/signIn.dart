import 'package:flutter/material.dart';
import 'constants.dart';


class SingIn  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {

                },
                decoration: kInputDecoration,
              ),
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {

                },
                decoration: kInputDecoration,
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                child: const Center(child: Text('Login')),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(32)
                ),
      
              ),
            )
          ],
        ),
      ),
    );
  }
}