import 'package:flutter/material.dart';
import 'package:practice_arena/core/components/custom_appbar.dart';
import 'package:practice_arena/user/home.dart';

class AddSubscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Subscription Plan'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Basic Plan",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text('1 Month'),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.adjust),
                          Text(
                            ' 10 Rides Everyday',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.adjust),
                          Text(
                            ' 2 Cash Rides',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.adjust),
                          Text(
                            ' 50 km Travel Rides',
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              showAlertDialog(context, 'Thank You',
                                  'Thank you for registering with YelowTaxi. \nPlease complete your registration and be activated by visiting our office.');
                            },
                            child: Text(
                              'TRY FREE',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Classic Plan",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text('3 Months'),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.adjust),
                          Text(
                            ' 10 Rides Everyday',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.adjust),
                          Text(
                            ' 2 Cash Rides',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.adjust),
                          Text(
                            ' 50 km Travel Rides',
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              showAlertDialog(context, 'Thank You',
                                  'Thank you for registering with YelowTaxi. \nPlease complete your registration and be activated by visiting our office.');
                            },
                            child: Text(
                              'BUY AT \$20.50',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context, title, result) {
  Widget okButton = FlatButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    },
    child: Text(
      'OKAY',
      style: TextStyle(color: Colors.green),
    ),
  );
  AlertDialog alert = AlertDialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 10),
    title: Text(
      '$title',
      style: TextStyle(color: Colors.black),
    ),
    content: Text(
      '$result',
      style: TextStyle(color: Colors.black),
    ),
    actions: [okButton],
  );

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
