import 'package:flutter/material.dart';
import 'package:animatedloginui/constants.dart';
import 'package:animatedloginui/models/Product.dart';
import 'package:animatedloginui/models/Measure.dart';

import 'add_to_cart.dart';

import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: kDefaultPaddin * 3.5),
                      Text(
                        "Upper body measurments",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: kDefaultPaddin / 2),
                      labeltextbuilder("Length", lengthTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2.5),
                      labeltextbuilder(
                          "Upper chest", upperchestTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2),
                      labeltextbuilder("Waist", waistTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2.5),
                      labeltextbuilder(
                          "Arm Hole", armholeTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2.5),
                      labeltextbuilder(
                          "Shoulder", shoulderTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2.5),
                      labeltextbuilder("Sleeve", sleeveTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2.5),
                      labeltextbuilder("Loose", looseTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2.5),
                      labeltextbuilder(
                          "Front Neck", frontneckTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2.5),
                      labeltextbuilder(
                          "Deep Neck", deepneckTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2.5),
                      labeltextbuilder("Width", widthTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2.5),
                      labeltextbuilder("Collar", collarTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2),
                      SizedBox(height: kDefaultPaddin * 2),
                      Text(
                        "Customer Details",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: kDefaultPaddin / 2),
                      labeltextbuilder(
                          "Customer Name", customernameTextEditingController),
                      SizedBox(height: kDefaultPaddin / 2.5),
                      labeltextbuilder(
                          "Contact No.", contactnoTextEditingController),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class labeltextbuilder extends StatelessWidget {
  labeltextbuilder(this.label, this.textcontroller);

  TextEditingController textcontroller = TextEditingController();
  String label;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textcontroller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: label,
      ),
    );
  }
}
