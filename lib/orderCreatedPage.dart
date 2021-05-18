import 'package:flutter/material.dart';
import 'package:animatedloginui/homePage.dart';

class OrderCreatedPage extends StatefulWidget {
  @override
  _OrderCreatedPageState createState() => _OrderCreatedPageState();
}

class _OrderCreatedPageState extends State<OrderCreatedPage> {
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
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 170,
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
                    "Order Created",
                    style: TextStyle(fontSize: 36),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 140),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Go To  ",
                            style: TextStyle(fontSize: 15),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Text(
                              "Home",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.green),
                            ),
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
