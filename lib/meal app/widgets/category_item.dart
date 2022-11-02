import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String? id;
  final String? title;
  final Color? color;
  final int index = 0;
  final VoidCallback? voidcallback;

  const CategoryItem({this.id, this.title, this.color, Key? key, this.voidcallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color!, color!.withOpacity(.5)],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: MaterialButton(
        splashColor: Theme.of(context).primaryColor,
          onPressed:voidcallback,
          child: Text(
            "$title",
            style: Theme.of(context).textTheme.subtitle1,
          )),
    );
  }
}
