import 'package:flutter/material.dart';
import 'package:animatedloginui/orderCreatedPage.dart';

class NewOrderPage extends StatefulWidget {
  @override
  _NewOrderPageState createState() => _NewOrderPageState();
}

class _NewOrderPageState extends State<NewOrderPage> {
  TextEditingController NameTextEditingController = TextEditingController();
  TextEditingController PhNoTextEditingController = TextEditingController();
  TextEditingController WidthTextEditingController = TextEditingController();
  TextEditingController HeightTextEditingController = TextEditingController();

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
            SizedBox(height: 30.0),
            Padding(
                padding: EdgeInsets.all(15),
                child: Column(children: <Widget>[
                  Align(
                      alignment: Alignment(-1, 0.3),
                      child: Text(
                        'Customer Name',
                        style: TextStyle(fontSize: 28),
                        textAlign: TextAlign.left,
                      )),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: NameTextEditingController,
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Name Field is Empty';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ])),
            SizedBox(height: 10.0),
            Padding(
                padding: EdgeInsets.all(15),
                child: Column(children: <Widget>[
                  Align(
                      alignment: Alignment(-1, 0.3),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(fontSize: 28),
                        textAlign: TextAlign.left,
                      )),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: PhNoTextEditingController,
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Phone Number Field is Empty';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: TextStyle(
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ])),
            SizedBox(height: 10.0),
            Padding(
                padding: EdgeInsets.all(15),
                child: Column(children: <Widget>[
                  Align(
                      alignment: Alignment(-1, 0.3),
                      child: Text(
                        'Height',
                        style: TextStyle(fontSize: 28),
                        textAlign: TextAlign.left,
                      )),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: WidthTextEditingController,
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Height Field is Empty';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Height",
                      labelStyle: TextStyle(
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ])),
            SizedBox(height: 10.0),
            Padding(
                padding: EdgeInsets.all(15),
                child: Column(children: <Widget>[
                  Align(
                      alignment: Alignment(-1, 0.3),
                      child: Text(
                        'Width',
                        style: TextStyle(fontSize: 28),
                        textAlign: TextAlign.left,
                      )),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: HeightTextEditingController,
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Width Field is Empty';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Width",
                      labelStyle: TextStyle(
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ])),
            SizedBox(height: 40),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderCreatedPage()));
                },
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(color: Colors.grey[900]),
                      child: Center(
                        child: Text(
                          "Register Order",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    )))
          ],
        ))));
  }
}

//!Add Firestore reference and upload the details
