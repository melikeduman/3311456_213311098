import 'dart:math';

import 'package:flutter/material.dart';

import '../colors/colors.dart';
class NotBloklari extends StatelessWidget {
  final baslik;
  final notum;
  NotBloklari(
      {Key? key,
        required this.baslik,
        required this.notum, //this.renk,
        })
      : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          child:Positioned(
            top: -23,
            child:
            Container(
              padding: EdgeInsets.only(top: 3),
              child: Text(baslik,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: beyaz1),
                maxLines: 1,
                textAlign: TextAlign.center,

              ),
              width: 110,
              height: 45,
              decoration:
              BoxDecoration(
                  color: ycturuncu,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(10.0),)
              ),),
          ) ,
        ),
        Container(

          padding: EdgeInsets.all(10),
          child: Text(notum, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: siyah),),
          height: 270,
          width: 400,
          decoration: BoxDecoration(color: beyaz4,
            border: Border.all(color: ycturuncu),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0) ,
            ),
          ),
        ),
      ],
    );

  }
}