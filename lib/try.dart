import 'package:flutter/material.dart';

class tryi extends StatelessWidget {
  const tryi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 18
          )]
        ),
      child: CircleAvatar(
        backgroundColor: Colors.white,
      ),
      ),
      ),
    );
  }
}
