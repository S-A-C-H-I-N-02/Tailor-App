import 'package:animatedloginui/models/Measure.dart';
import 'package:animatedloginui/screens/orderDetailsPage.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  List userDetailsList = [];

  @override
  void initState() {
    super.initState();
    fetchDetailsList();
  }

  fetchDetailsList() async {
    List resultant = await getDetailsList();

    if (resultant == null) {
      print("Unable to retrieve data");
    } else {
      setState(() {
        userDetailsList = resultant;
      });
    }
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(
            "Tailor App",
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white54,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                color: Colors.white54,
                onPressed: () {
                  print(userDetailsList[1]['Customer Name']);
                }),
          ],
        ),
        body: Container(
            child: ListView.builder(
                itemCount: userDetailsList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  OrderDetailsPage(index: index)));
                    },
                    child: Card(
                        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                '${userDetailsList[index]['Customer Name']}',
                                style: TextStyle(
                                  fontSize: 26,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Contact No.  ${userDetailsList[index]['Contact No.']}',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey[700]),
                              ),
                              Text(
                                'Order Status',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        )),
                  );
                })));
  }
}
