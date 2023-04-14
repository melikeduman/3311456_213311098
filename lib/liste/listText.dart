import 'package:flutter/material.dart';
import 'package:todolist/colors/colors.dart';
class ListText extends StatelessWidget {
  const ListText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "Listelerim",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
