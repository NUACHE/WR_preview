import 'package:flutter/material.dart';
import 'package:practice_arena/intro/addvehicle.dart';

class PersonalDocument extends StatefulWidget {
  @override
  _PersonalDocumentState createState() => _PersonalDocumentState();
}

class _PersonalDocumentState extends State<PersonalDocument> {
  TextEditingController preset = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87, opacity: 0.7),
        backgroundColor: Colors.white12,
        elevation: 0.0,
        title: Text(
          'Personal Document',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    initialValue: 'Vehicle Registration...',
                    style: TextStyle(fontWeight: FontWeight.w300),
                    decoration: InputDecoration(
                        labelStyle: TextStyle(fontWeight: FontWeight.normal),
                        labelText: 'Birth Certificate',
                        suffixIcon: IconButton(
                            icon: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            onPressed: null)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    initialValue: 'A driving licence is an official do...',
                    style: TextStyle(fontWeight: FontWeight.w300),
                    decoration: InputDecoration(
                        labelText: 'Driving Licence',
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.green),
                            strokeWidth: 1.5,
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    initialValue: 'A passport is a travel document...',
                    style: TextStyle(fontWeight: FontWeight.w300),
                    decoration: InputDecoration(
                      labelText: 'Passport',
                      suffix: InkWell(
                        child: Text('UPLOAD',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    initialValue: 'Incorrect document type',
                    style: TextStyle(fontWeight: FontWeight.w300),
                    decoration: InputDecoration(
                      labelText: 'Election Card',
                      suffix: InkWell(
                        child: Text('UPLOAD',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
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
