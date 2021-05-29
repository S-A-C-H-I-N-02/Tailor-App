import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animatedloginui/constants.dart';
import 'package:animatedloginui/screens/home/components/body.dart';
import 'package:get/get.dart';

import '../ordersPage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kprimarycolor,
      elevation: 0,
      leading: Icon(
        FontAwesomeIcons.user,
        size: 40,
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(FontAwesomeIcons.shoppingCart, size: 30),
            onPressed: () {
              Get.to(OrdersPage()); //! Need attention
            })
      ],
    );
  }
}
