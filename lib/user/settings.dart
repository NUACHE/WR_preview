import 'package:flutter/material.dart';
import 'package:practice_arena/core/components/custom_appbar.dart';
import 'package:practice_arena/user/editprofile.dart';
import 'package:practice_arena/user/myvehicle.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Settings'),
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
                      builder: (context) => EditProfile(),
                    ),
                  );
                },
                title: Text('My Profile'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyVehicle(),
                    ),
                  );
                },
                title: Text('My Vehicle'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                title: Text('Personal Document'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                title: Text('Bank Details'),
              ),
              ListTile(
                onTap: () {},
                title: Text('Change Password'),
              ),
              SizedBox(
                child: Container(
                  color: Color.fromRGBO(242, 245, 247, 1),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'HELP',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                height: 50,
              ),
              ListTile(
                onTap: () {},
                title: Text('Terms & Conditions'),
              ),
              ListTile(
                onTap: () {},
                title: Text('Privacy Policies'),
              ),
              ListTile(
                onTap: () {},
                title: Text('About'),
              ),
              ListTile(
                onTap: () {},
                title: Text('Contact Us'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
