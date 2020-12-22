import 'package:flutter/material.dart';
import 'package:practice_arena/core/components/custom_appbar.dart';
import 'package:practice_arena/core/subscription.dart';
import 'package:practice_arena/core/components/styled_tile.dart';

class VehicleDocument extends StatefulWidget {
  @override
  _VehicleDocumentState createState() => _VehicleDocumentState();
}

class _VehicleDocumentState extends State<VehicleDocument> {
  TextEditingController preset = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Vehicle Document'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                StyledTile(
                  title: 'RC BOOK',
                  subtitle: 'Vehicle Registration',
                  trailing: IconButton(
                      icon: Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                      onPressed: null),
                ),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
                StyledTile(
                  title: 'Insurance Policy',
                  subtitle: 'A driving licence is an official do...',
                  trailing: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    strokeWidth: 1.5,
                  ),
                ),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
                StyledTile(
                    title: 'Owner Certificate',
                    subtitle: 'A passport is a travel document...'),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
                StyledTile(title: 'PUC', subtitle: 'Incorrect document type'),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'By continuing, I confirm that i have read & agree to the ',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      InkWell(
                        onTap: () {
                          print('Done');
                        },
                        child: Text(
                          '\n Terms & conditions and Privacy policy',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 38.0, right: 38.0),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddSubscription(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            color: Colors.green),
                        child: Text(
                          'NEXT',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
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
