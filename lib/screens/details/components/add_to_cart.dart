import 'package:flutter/material.dart';
import 'package:animatedloginui/models/Product.dart';
import 'package:animatedloginui/models/Measure.dart';
import 'package:animatedloginui/main.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          // Container(
          //   margin: EdgeInsets.only(right: kDefaultPaddin),
          //   height: 50,
          //   width: 58,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(18),
          //     border: Border.all(
          //       color: product.color,
          //     ),
          //   ),
          //   child: IconButton(
          //     icon: SvgPicture.asset(
          //       "assets/icons/add_to_cart.svg",
          //       color: product.color,
          //     ),
          //     onPressed: () {},
          //   ),
          // ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: () async {
                  await usersRef.add({
                    'Measures': {
                      'Length': lengthTextEditingController.text,
                      'Upper Chest': upperchestTextEditingController.text,
                      'Waist': waistTextEditingController.text,
                      'Arm Hole': armholeTextEditingController.text,
                      'Shoulder': shoulderTextEditingController.text,
                      'Sleeve': sleeveTextEditingController.text,
                      'Loose': looseTextEditingController.text,
                      'Front Neck': frontneckTextEditingController.text,
                      'Deep Neck': deepneckTextEditingController.text,
                      'Width': widthTextEditingController.text,
                      'Collar': collarTextEditingController.text,
                    }
                  });
                },
                child: Text(
                  "order now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
