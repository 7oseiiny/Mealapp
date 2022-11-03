import 'package:flutter/material.dart';
import 'package:untitled/meal%20app/models/meal.dart';

import '../screens/meal_data_screen.dart';

class MealItem extends StatelessWidget {
  final List<Meal> data;
  const MealItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) =>Meal_Item(data:data,id:index),
              itemCount: data.length),
        ),
      ],
    );
  }
}

class Meal_Item extends StatelessWidget {
  final int id;
  final List<Meal> data;
  const Meal_Item({Key? key, required this.data, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(
                color: Colors.grey,
                spreadRadius: 5,
                blurRadius: 5
            )]
        ),
        child: Container(
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
          clipBehavior: Clip.antiAliasWithSaveLayer,

          child: MaterialButton(
            padding: EdgeInsets.all(0),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MealDataScreen(id:data[id].id ,data:data[id]))
              );
            },
             child: Container(
               decoration: BoxDecoration(             color: Colors.white,
                   borderRadius: BorderRadius.all(Radius.circular(20))),
               child: Column(
                 children: [
                   Stack(
                     children: [
                       Container(
                         height: 200,
                         width: double.infinity,
                         color: Colors.white,
                         child: ClipRRect(
                           borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(20),
                             topRight: Radius.circular(20)
                           ),

                             child: Image.network("${data[id].imageUrl!}",fit: BoxFit.fill ,)),
                       ),
                       Positioned(
                           bottom: 20,
                           right: 10,

                           child: Container(color:Colors.black45
                               ,width:300,child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text(data[id].title!,style: TextStyle(fontSize: 25,color: Colors.white,)),
                           )))
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.all(15),
                     child: Row(                       mainAxisAlignment: MainAxisAlignment.spaceBetween,

                       children: [
                         Row(
                           children: [
                             Icon(Icons.access_alarm),
                             SizedBox(width: 10,),
                             Text("${data[id].duration} min"),
                           ],
                         ), // Row
                         Row(
                           children: [
                             Icon(Icons.shopping_bag),
                             SizedBox(width: 10,),
                             Text("${data[id].complexity.toString().split(".")[1]}"),
                           ],
                         ), // Row
                         Row(
                           children: [
                             Icon(Icons.monetization_on),
                             SizedBox(width: 10,),
                             Text("${data[id].affordability.toString().split(".")[1]}"),
                           ],
                         ), // Row
                       ],
                     ), // Row
                   ), // Padding
                 ],
               ),
             ),
          ),
        ),
      ),
    );
  }
}
