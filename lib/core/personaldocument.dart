import 'package:flutter/material.dart';
import 'package:practice_arena/core/addvehicle.dart';
import 'package:practice_arena/core/components/custom_appbar.dart';
import 'package:practice_arena/core/components/rounded_button.dart';
import 'package:practice_arena/core/components/styled_tile.dart';

class PersonalDocument extends StatefulWidget {
  @override
  _PersonalDocumentState createState() => _PersonalDocumentState();
}

class _PersonalDocumentState extends State<PersonalDocument> {
  TextEditingController preset = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Personal Document'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                StyledTile(
                  title: 'Birth Certificate',
                  subtitle: 'Vehicle Registration...',
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
                  title: 'Driving Licence',
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
                    title: 'Passport',
                    subtitle: 'A passport is a travel document...'),
                Divider(
                  thickness: 2.5,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {},
                  title: Text('Election Card'),
                  subtitle: Text('Incorrect document type'),
                  trailing: InkWell(
                    child: Text('UPLOAD',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold)),
                  ),
                ),
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
                            builder: (context) => AddVehicle(),
                          ),
                        );
                      },
                      child: RoundedButton(
                        name: 'NEXT',
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
