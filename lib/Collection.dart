import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Collection",
          style: TextStyle(
              fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}