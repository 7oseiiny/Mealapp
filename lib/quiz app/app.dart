import 'package:flutter/material.dart';
import 'package:untitled/quiz%20app/answar.dart';
import 'package:untitled/quiz%20app/question.dart';
import 'package:untitled/quiz%20app/result.dart';


class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _q_index=0;
  int score=0;
  bool isswitch=true;
  final List<Map<String, Object>> _q =[
    {
      'question':"wat is ur fav color ",
      'answars':[
        {"text":'red',"score":10},
        {"text":'green',"score":20},
        {"text":'blue',"score":30}
      ]
    },
    {
      'question':"wat is ur fav animal ",
      'answars':[
    {"text":'lion',"score":10},
    {"text":'monky',"score":20},
    {"text":'qwala',"score":30}
      ]
    },
    {
      'question':"wat is ur fav job",
      'answars':[
        {"text":'programmer',"score":10},
        {"text":'engneer',"score":20},
        {"text":'doctor',"score":30}
      ]
    },

  ];
  void answar_q(int scor ){
    score +=scor;
    _q_index+=1;
    setState(() {});
  }
  void restart (){
    _q_index=0;
    score=0;
    setState(() {});
    print("sd");
  }
  Color f_c_b_w(){
   if (isswitch==true){return Colors.white;}
  else return Colors.black;
  }
//+++++++++++++++++++++++++++  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: f_c_b_w(),
      appBar: AppBar(
        title: Text('Quizapp'),
        actions: [
          Switch(value: isswitch, onChanged: (v){setState(() {
            isswitch=v;
          });})
        ],
      ),
      body: _q_index<_q.length?Column(
        children: [
          Question(f_c_b_w,_q[_q_index]['question'].toString()),
          ...(_q[_q_index]['answars'] as List<Map<String,Object>>).map((e) => Answar(e["text"].toString(),(){answar_q(int.parse(e["score"].toString()));}))
        ],
      ):Result(restart,score)
    );
  }
}
