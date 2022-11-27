import 'package:flutter/material.dart';
import 'components/rounded_buttons.dart';
import 'signUP.dart';
import 'signIn.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    )
  );
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              children: const [
                Icon(Icons.flash_on,
                  size: 100,
                  color: Colors.orange,
                ),
                Text('Flash Chat',
                  style: TextStyle(
                    fontSize: 30
                  ),
                )
              ],
            ),
          const SizedBox(height: 5,),
          RoundedButtons(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SingIn()));

            },
            title: 'Login',
            color: Colors.blueAccent,
          ),
          RoundedButtons(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
            },
            title: 'Register',
            color: Colors.lightBlueAccent,
          )
        ],
      )
    );
  }

}



