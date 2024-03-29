import 'package:flutter/material.dart';
import 'package:practice_arena/core/components/rounded_button.dart';

class ForgotPass extends StatefulWidget {
  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87, opacity: 0.7),
        backgroundColor: Colors.white12,
        elevation: 0.0,
        title: Text(
          'Reset Password',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'New Password'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Confirm Password'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 18.0, left: 38.0, right: 38.0),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: RoundedButton(
                      name: 'RESET',
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
