import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Earning extends StatelessWidget {
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('Mon', 50),
      new OrdinalSales('Tue', 43),
      new OrdinalSales('Wed', 47),
      new OrdinalSales('Thu', 20),
      new OrdinalSales('Fri', 48),
      new OrdinalSales('Sat', 33),
      new OrdinalSales('Sun', 55),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        // ignore: missing_return
        colorFn: (OrdinalSales sales, _) {
          switch (sales.days) {
            case 'Mon':
              {
                return charts.Color.fromHex(code: '#D6D6D6');
              }
            case 'Tue':
              {
                return charts.MaterialPalette.green.makeShades(9)[0];
              }
            case 'Wed':
              {
                return charts.Color.fromHex(code: '#D6D6D6');
              }
            case 'Thu':
              {
                return charts.Color.fromHex(code: '#D6D6D6');
              }
            case 'Fri':
              {
                return charts.Color.fromHex(code: '#D6D6D6');
              }
            case 'Sat':
              {
                return charts.Color.fromHex(code: '#D6D6D6');
              }
            case 'Sun':
              {
                return charts.Color.fromHex(code: '#D6D6D6');
              }
          }
        },
        domainFn: (OrdinalSales sales, _) => sales.days,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            FlatButton(
              onPressed: null,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(242, 245, 247, 1),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Text(
                      "Normal",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ],
          iconTheme: IconThemeData(color: Colors.black87, opacity: 0.7),
          backgroundColor: Colors.white12,
          elevation: 0.0,
          title: Text(
            'Earnings',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
          ),
          bottom: TabBar(
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            onTap: (index) {},
            tabs: <Widget>[
              Tab(
                text: "TODAY",
              ),
              Tab(
                text: "WEEKLY",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Tab1(), CustomRoundedBars(_createSampleData())],
        ),
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TableRow tableRow = TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '15',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Trips',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '8:30',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Online hrs',
                      overflow: TextOverflow.fade,
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$22.48',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Cash Trip',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
    return SingleChildScrollView(
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
                        'Mon, 18 Feb’19',
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
                            style: TextStyle(fontSize: 30, color: Colors.green),
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
          ListTile(
            title: Text(
              'Trip Fares',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$40.25',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              'YellowTaxi Fee',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$20.00',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              '+Tax',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$400.50',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              '+Tolls',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$400.50',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              'Surge',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$40.25',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              'Discount(-)',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$20.00',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(
              thickness: 2,
            ),
          ),
          ListTile(
            title: Text(
              'Total Earnings',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            trailing: Text(
              '\$460.75',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomRoundedBars extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  CustomRoundedBars(this.seriesList, {this.animate});

  /// Creates a [BarChart] with custom rounded bars.
  factory CustomRoundedBars.withSampleData() {
    return new CustomRoundedBars(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    TableRow tableRow = TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '45',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Trips',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '38:30',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'Online hrs',
                    overflow: TextOverflow.fade,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$99.48',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Cash Trip',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ]);
    return SingleChildScrollView(
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
                        'Mon, 18 Feb’19',
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
                            style: TextStyle(fontSize: 30, color: Colors.green),
                            children: [
                              TextSpan(
                                text: '154.75',
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
          Padding(
            padding: const EdgeInsets.only(bottom: 35.0),
            child: Container(
              height: 150,
              child: new charts.BarChart(
                seriesList,
                animate: animate,
                primaryMeasureAxis: new charts.NumericAxisSpec(
                  renderSpec: new charts.NoneRenderSpec(),
                ),
                defaultRenderer: new charts.BarRendererConfig(
                  // By default, bar renderer will draw rounded bars with a constant
                  // radius of 100.
                  // To not have any rounded corners, use [NoCornerStrategy]
                  // To change the radius of the bars, use [ConstCornerStrategy]
                  cornerStrategy: const charts.ConstCornerStrategy(10),
                ),
              ),
            ),
          ),
          Table(
            children: [tableRow],
            border: TableBorder.all(color: Colors.black12),
          ),
          ListTile(
            title: Text(
              'Trip Fares',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$40.25',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              'YellowTaxi Fee',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$20.00',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              '+Tax',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$400.50',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              '+Tolls',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$400.50',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              'Surge',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$40.25',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              'Discount(-)',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$20.00',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(
              thickness: 2,
            ),
          ),
          ListTile(
            title: Text(
              'Total Earnings',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            trailing: Text(
              '\$460.75',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.days,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String days;
  final int sales;

  OrdinalSales(this.days, this.sales);
}
