import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function r;
  final int score;
  String? rate (){if (score>50){return"low $score ";} else if (score<50){return"high $score ";}
return null;}

  Result(this.r,this.score);
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Done"),
        Text("result is ${rate()}"),
        TextButton(onPressed: (){r();}, child: Text("restart the app"))
      ],
    ));
  }
}
