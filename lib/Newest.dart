import 'package:flutter/material.dart';

class Newest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: ListView(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 35, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart, size: 35, color: Colors.white)),
            SizedBox(width: 10),
          ]),
          Text(
            "Newest",
            style: TextStyle(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n1.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n2.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n3.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n4.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n5.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n6.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n8.jpg')),
        ],
      ),
    );
  }
}