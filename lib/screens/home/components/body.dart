import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animatedloginui/constants.dart';
import 'package:animatedloginui/models/Product.dart';
import 'package:animatedloginui/screens/details/details_screen.dart';

import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: [
            Container(
              height: size.height * 0.2,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: kdefaultpadding, bottom: kdefaultpadding + 10),
                    height: size.height * 0.2 - 27,
                    decoration: BoxDecoration(
                      color: kprimarycolor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text("hi name of company",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30.0))
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: kdefaultpadding),
                      padding:
                          EdgeInsets.symmetric(horizontal: kdefaultpadding),
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: kprimarycolor.withOpacity(0.23)),
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "search",
                            hintStyle: TextStyle(
                                color: kprimarycolor.withOpacity(0.5),
                                fontSize: 20),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: Icon(FontAwesomeIcons.search)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: kDefaultPaddin * 2),

        maleitemcrd(), //////////shows the cards in home
      ],
    );
  }

  Expanded maleitemcrd() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPaddin,
              crossAxisSpacing: kDefaultPaddin,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],
                        ),
                      )),
                )),
      ),
    );
  }
}
