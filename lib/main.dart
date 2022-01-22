import 'package:flutter/material.dart';
import 'signUP.dart';

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

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: _contents(context),
        ),
      ),
      
    );
  }

  Column _contents(BuildContext context) {
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                child: Image.asset('images/comp.png')),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Login',textAlign: 
                    TextAlign.left,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.blue
                    ),
                    ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  labelText: 'Email',
                  hintText: 'Eneter valid email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                  labelText: 'Password',
                  hintText: 'Eneter valid password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            const SizedBox(height: 10.0,),

            Container(
              width: 150.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(
                child: const Text('Login', style: TextStyle(color: Colors.white),),
                onPressed: () {},
              ),
            ),

            const SizedBox(height: 50.0,),

            GestureDetector(
              onTap: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUP()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text.rich(
                    TextSpan(
                      text: 'Don\'t u have an accout? ',
                      children: [
                        TextSpan(text: 'Sign Up', style: TextStyle(color: Colors.blue))
                      ]
                    )
                  )
                ],
              ),
            )
          ],
        );
  }
}

