import 'package:flutter/material.dart';
import 'package:todolist/colors/colors.dart';
class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}
class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: beyaz4,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: ycpetrol,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),

      body: Container(),

    );
  }
}
