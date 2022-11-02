import 'package:flutter/material.dart';

class Answar extends StatelessWidget {
  final String answartext;
  final VoidCallback x;

  const Answar(this.answartext,this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: MaterialButton(onPressed: x,
      child: Text(answartext),
        color: Colors.blue,
      ),
    );
  }
}
