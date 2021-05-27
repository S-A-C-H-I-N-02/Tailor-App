import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Top",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/item_1.png",
      color: Color(0xFFAAAAAA)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/item_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/item_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/item_4.png",
      color: Color(0xFF989493)),

  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/item_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/item_6.png",
    color: Color(0xFFAEAEAE),
  ),

];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
