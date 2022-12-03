import 'package:flutter/material.dart';
import 'package:new_app/components/form_field_widget.dart';
import '../components/confirmation_button.dart';
import './register_screen.dart';



class Login_Screen extends StatelessWidget {
  const Login_Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 50,),
              const Center(
                child: Text('Welcome Back!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Text('Please login to your account',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18
                    ),
                  ),
                ),
                ],
              ),
              // const SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    FormFieldWidget(
                      label: 'email',
                    ),
                    const SizedBox(height: 20),
                    FormFieldWidget(
                      label: 'password',
                    )
                  ],
                )
              ),
              const SizedBox(height: 15,),
              const Text('Forgot Password?         ',
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
                
              // const SizedBox(height: 120,),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: ConfirmationButton(
                 wName: const Text('Sign in'),
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 10,),
              ConfirmationButton(
                wName: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: Row(
                    children: const [
                      Icon(Icons.search,
                        color: Colors.black,
                      ),
                      SizedBox(width: 8,),
                      Text('Sing in with Google',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )
                    ],
                  ),
                ),
                color: Colors.white,
              ),
              const SizedBox(height: 15,),
                
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Register_Screen()));
                    },
                    child: const Text('Sing Up',
                      style: TextStyle(
                        color: Colors.deepPurple
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}

