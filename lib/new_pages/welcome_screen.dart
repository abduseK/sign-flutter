import 'package:flutter/material.dart';
import 'login_screen.dart';
import '../components/confirmation_button.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Image(
              image: AssetImage('images/image.jpg'),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Hello',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400]
                    )
                  ),
                  const SizedBox(height: 10,),
                  Text('Watch your favorite movies or series on \n       only one platform you can watch it \n                anywhere anytime',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[300]
                    ),
                  ),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Screen()));
                    },
                    child: ConfirmationButton(
                      wName: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 100,),
                 

                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}

