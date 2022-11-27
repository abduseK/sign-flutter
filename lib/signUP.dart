import 'package:flutter/material.dart';
import 'constants.dart';


class SignUp  extends StatelessWidget {

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  email = value;
                },
                decoration: kInputDecoration,
              ),
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  password = value;
                },
                decoration: kInputDecoration,
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: GestureDetector(
                onTap: () {
                  print(email);
                  print(password);
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: const Center(child: Text('Register')),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(32)
                  ),
                    
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}