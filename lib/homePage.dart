import 'package:flutter/material.dart';
import 'package:animatedloginui/newOrderPage.dart';
import 'package:animatedloginui/ordersPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "Tailor App - Home",
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
          IconButton(
              icon: Icon(Icons.notifications_none),
              color: Colors.white54,
              onPressed: () {}),
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 50.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: FloatingActionButton.extended(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewOrderPage()));
            },
            label: Text("Button"),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white70,
            elevation: 10,
            highlightElevation: 15,
          ),
        ),
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
            if (index == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrdersPage()));
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
