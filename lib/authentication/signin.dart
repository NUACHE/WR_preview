import 'package:flutter/material.dart';
import 'package:practice_arena/authentication/forgotpass.dart';
import 'package:practice_arena/core/components/rounded_button.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Email / Mobile Number'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 38.0, left: 38.0, right: 38.0),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      print('Sign in');
                    },
                    child: RoundedButton(
                      name: 'SIGN IN',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 7.0, bottom: 10.0, left: 38.0, right: 38.0),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPass(),
                        ),
                      );
                    },
                    child: RoundedButton(
                      name: 'FORGOT PASSWORD',
                      textcolor: Colors.green,
                      buttoncolor: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
