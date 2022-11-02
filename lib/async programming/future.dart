
void main (){
  final f1 = Future(() => print("f1"));
  final f2 =Future(info).then((value) => print("f2")).catchError((e){print(e);});
  final f3 =Future.delayed(Duration(seconds: 2), info).then((value) => print("f3")).catchError((e){print(e);});
  final f4 =Future.value(2).then((value) => print("f4"));
  final f5 =Future(info);

  print("f0");
}
String info ({int? ff}){
  return "this is : ${int.parse("5")}";
}