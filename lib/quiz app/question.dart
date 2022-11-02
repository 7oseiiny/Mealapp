import 'package:flutter/material.dart';
import 'package:untitled/quiz%20app/app.dart';

class Question extends StatelessWidget {
  final String questiontext;
  final Function dark;
  Color not (Color x){
    if (x==Colors.black){return Colors.white;}
    else return Colors.black;
  }
  const Question(this.dark,this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
          "$questiontext",
        style: TextStyle(color: not(dark())),
        textAlign: TextAlign.center,

      ),
    );
  }
}
