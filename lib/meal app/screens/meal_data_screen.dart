import 'package:flutter/material.dart';
import 'package:untitled/dummy_data.dart';
import 'package:untitled/meal%20app/models/meal.dart';

class MealDataScreen extends StatelessWidget {
  final String? id ;
  final Meal? data ;
  const MealDataScreen({
    this.id,
    this.data,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Meal selectedMeal = DUMMY_MEALS.firstWhere((element) => element.id==id);
    return Scaffold(
      appBar: AppBar(
        title: Text("${data!.id}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network("${selectedMeal!.imageUrl}",fit: BoxFit.cover,),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text("Integration",style: Theme.of(context).textTheme.subtitle1,)),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                  child: ListView.builder(itemBuilder: ((context, index) =>Card(color:Colors.orange,child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(selectedMeal.ingredients![index]),
                  )) ),itemCount: selectedMeal.ingredients!.length)),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text("Steps",style: Theme.of(context).textTheme.subtitle1,)),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)
              ),
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: ListView.builder(itemBuilder: ((context, index) =>Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        CircleAvatar(child: Text("${index+1}"),),
                        SizedBox(width: 10,),
                        Container(width: 220,child: Text(selectedMeal.steps![index])),
                      ],
                    ),
                  ) ),itemCount: selectedMeal.steps!.length)),
            ),
            SizedBox(
               height: 50,
            )

          ],
        ),
      ),
    );
  }
}
