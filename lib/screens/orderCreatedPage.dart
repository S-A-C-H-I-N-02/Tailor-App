import 'package:animatedloginui/screens/ordersPage.dart';
import 'package:flutter/material.dart';
import 'package:animatedloginui/screens/home/home_screen.dart';

class OrderCreatedPage extends StatefulWidget {
  @override
  _OrderCreatedPageState createState() => _OrderCreatedPageState();
}

class _OrderCreatedPageState extends State<OrderCreatedPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Tailor App",
      //   ),
      //   backgroundColor: Colors.black,
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     color: Colors.white54,
      //     onPressed: () {},
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //         icon: Icon(Icons.search),
      //         color: Colors.white54,
      //         onPressed: () {}),
      //   ],
      // ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 220,
            ),
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 100.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Order Created!",
                    style: TextStyle(fontSize: 45),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 170),
                      child: Row(
                        children: <Widget>[
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                            child: Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[800]),
                            ),
                          ),
                          SizedBox(width: 10),
                          RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          OrdersPage())); //!change to orders page
                            },
                            child: Text("Orders",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                            color: Colors.grey[850],
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
