import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TableRow tableRow = TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WITHDRAW',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ADD MONEY',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
            ],
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87, opacity: 0.7),
        backgroundColor: Colors.white12,
        elevation: 0.0,
        title: Text(
          'Wallet',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Total balance',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: RichText(
                              text: TextSpan(
                                text: '\$',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.green),
                                children: [
                                  TextSpan(
                                    text: '54.75',
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Table(
                children: [tableRow],
                border: TableBorder.all(color: Colors.black12),
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
                          'APRIL 2019',
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
                leading: Icon(Icons.account_balance_wallet),
                title: Text(
                  'Added To Wallet',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                subtitle: Text(
                  '1 Feb\'19. #1234567',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text(
                  '\$40',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                leading: Icon(Icons.directions_car),
                title: Text(
                  'Trip Deducted',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                subtitle: Text(
                  '1 Feb\'19. #1234567',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text(
                  '\$40',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text(
                  'Withdraw To Wallet',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                subtitle: Text(
                  '1 Feb\'19. #1234567',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text(
                  '\$40',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
