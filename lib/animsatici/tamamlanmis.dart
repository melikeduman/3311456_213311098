import 'package:flutter/material.dart';

import '../colors/colors.dart';
class Completed extends StatefulWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: beyaz4,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: ycturuncu,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),

      body: Container(),

    );
  }
}
