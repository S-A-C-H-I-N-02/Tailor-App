import 'package:animatedloginui/main.dart';
import 'package:animatedloginui/screens/details/details_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

TextEditingController lengthTextEditingController = TextEditingController();
TextEditingController upperchestTextEditingController = TextEditingController();
TextEditingController waistTextEditingController = TextEditingController();
TextEditingController armholeTextEditingController = TextEditingController();
TextEditingController shoulderTextEditingController = TextEditingController();
TextEditingController sleeveTextEditingController = TextEditingController();
TextEditingController looseTextEditingController = TextEditingController();
TextEditingController frontneckTextEditingController = TextEditingController();
TextEditingController deepneckTextEditingController = TextEditingController();
TextEditingController widthTextEditingController = TextEditingController();
TextEditingController collarTextEditingController = TextEditingController();
TextEditingController customernameTextEditingController =
    TextEditingController();
TextEditingController contactnoTextEditingController = TextEditingController();

User currentfirebaseUser;

Future getDetailsList() async {
  List detailsList = [];

  try {
    await usersRef.get().then((querySnapshot) {
      querySnapshot.docs.forEach((element) {
        if (element.data() != null) {
          detailsList.add(element.data());
        }
      });
    });
    return detailsList;
  } catch (e) {
    print(e.toString());
    return null;
  }
}
