import 'package:flutter/material.dart';
import 'package:new_app/components/form_field_widget.dart';
import '../components/confirmation_button.dart';
import './login_screen.dart';



class Register_Screen extends StatelessWidget {
  const Register_Screen({ Key? key }) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // const SizedBox(height: 60,),
              const Center(
                child: Text('Create new account',
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
                Text('Please fill in the form to continue',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18
                  ),
                ),
                ],
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    FormFieldWidget(
                      label: 'Full name',
                    ),
                    const SizedBox(height: 20),
                    FormFieldWidget(
                      label: 'Email Address',
                    ),
                    const SizedBox(height: 20),
                    FormFieldWidget(
                      label: 'Phone Number',
                    ),
                    const SizedBox(height: 20),
                    FormFieldWidget(
                      label: 'Password',
                    ),
                  ],
                )
              ),

              const SizedBox(height: 10,),
              ConfirmationButton(
               wName: const Text('Sign Up'),
                color: Colors.deepPurple,
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Screen()));
                    },
                    child: const Text('Sing in',
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

