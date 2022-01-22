import 'package:flutter/material.dart';
import 'main.dart';



class SignUP extends StatelessWidget {
  const SignUP({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    child: Image.asset('images/image2.png')),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Register',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
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
                      suffixIcon: Icon(Icons.person),
                      labelText: 'Name',
                      hintText: 'Eneter valid name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
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
                    child: const Text('Sing up', style: TextStyle(color: Colors.white),),
                    onPressed: () {},
                  ),
                ),
            
                const SizedBox(height: 40.0,),
            
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text.rich(
                        TextSpan(
                          text: 'Already have an account? ',
                          children: [
                            TextSpan(text: 'Sign in', style: TextStyle(color: Colors.blue))
                          ]
                        )
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        ),
        
      );
  }
}