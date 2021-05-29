import 'package:animatedloginui/models/Measure.dart';
import 'package:animatedloginui/screens/home/home_screen.dart';
import 'package:animatedloginui/screens/orderCreatedPage.dart';
import 'package:animatedloginui/screens/ordersPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

//! Need to connect with firestore database
//! Connect new home page
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  currentfirebaseUser = FirebaseAuth.instance.currentUser;
  runApp(MyApp());
}

CollectionReference usersRef =
    FirebaseFirestore.instance.collection(currentfirebaseUser.uid);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null
          ? Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                child: LoginPage(),
              ),
            )
          : OrdersPage(),
    );
  }
}
