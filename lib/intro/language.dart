import 'package:flutter/material.dart';
import 'package:practice_arena/intro/welcomepage.dart';

var langs = ['Arabic', 'Chinese', 'English', 'Korean', 'Urdu'];

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: langs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(langs[index]),
            onTap: () {
              index == 2
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Welcome(),
                      ),
                    )
                  : print('bye');
            },
          );
        },
      ),
    );
  }
}
