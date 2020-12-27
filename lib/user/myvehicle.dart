import 'package:flutter/material.dart';
import 'package:practice_arena/core/components/custom_appbar.dart';
import 'package:practice_arena/user/toyotaprius.dart';

class MyVehicle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('My Vehicle'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
                child: Container(
                  color: Color.fromRGBO(242, 245, 247, 1),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ToyotaPrius(),
                    ),
                  );
                },
                title: Text('Toyota Prius'),
                subtitle: Text('AB 1234'),
                trailing: Image(image: AssetImage('images/toyota.png')),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                title: Text('Toyota Prius'),
                subtitle: Text('AB 1234'),
                trailing: Image(image: AssetImage('images/toyota.png')),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                title: Text('Toyota Prius'),
                subtitle: Text('AB 1234'),
                trailing: Image(image: AssetImage('images/toyota.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
