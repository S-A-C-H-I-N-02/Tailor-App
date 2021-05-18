import 'package:flutter/material.dart';
import 'package:animatedloginui/orderDetailsPage.dart';

import 'homePage.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "Tailor App",
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white54,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.white54,
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderDetailsPage()));
              },
              child: Card(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Phone Number',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[700]),
                        ),
                        Text(
                          'Order Status',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderDetailsPage()));
              },
              child: Card(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Phone Number',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[700]),
                        ),
                        Text(
                          'Order Status',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderDetailsPage()));
              },
              child: Card(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Phone Number',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[700]),
                        ),
                        Text(
                          'Order Status',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderDetailsPage()));
              },
              child: Card(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Phone Number',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[700]),
                        ),
                        Text(
                          'Order Status',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall_rounded), //buisness_center
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            }
          });
        },
        unselectedItemColor: Colors.grey[900],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
      ),
    );
  }
}
