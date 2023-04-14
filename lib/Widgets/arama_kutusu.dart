import 'package:flutter/material.dart';
import 'package:todolist/colors/colors.dart';

Widget aramaKutusu(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal:15),
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: beyaz1,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(Icons.search,color: Colors.blueGrey,size: 20,),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20,
          minWidth: 25,
        ),
        border: InputBorder.none,
        hintText: 'Arayın',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}