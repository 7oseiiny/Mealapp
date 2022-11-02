void main (){
  
  Stream s1= Stream.periodic(Duration(milliseconds: 200),(a) => a);
  final sub =s1.listen((event) {print(event);});
  s1.where((event) => true,);
}
