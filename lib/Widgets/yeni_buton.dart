import 'package:flutter/material.dart';
import 'package:todolist/colors/colors.dart';

class YeniButon extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  YeniButon({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: ycturuncu,
      child: Container(
       child: Text(text, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: beyaz2)),
      ),
      //Text(text, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: beyaz2)),
    );
  }
}