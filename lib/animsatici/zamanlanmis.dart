import 'package:flutter/material.dart';
import '../colors/colors.dart';
class Timed extends StatefulWidget {
  const Timed({Key? key}) : super(key: key);

  @override
  State<Timed> createState() => _TimedState();
}

class _TimedState extends State<Timed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: beyaz4,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: ysyesil,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),

      body: Container(),

    );
  }
}
