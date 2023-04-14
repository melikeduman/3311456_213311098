import 'package:flutter/material.dart';
import 'package:todolist/Widgets/yeni_buton.dart';
import 'package:todolist/colors/colors.dart';
class DialogKutusu extends StatelessWidget {
  final controller;
  VoidCallback kaydet;
  VoidCallback vazgec;

  DialogKutusu({
  super.key,
  required this.controller,
  required this.kaydet,
  required this.vazgec,
 });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: beyaz1,
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              autofocus: false,
              cursorColor: ycpetrol,
              decoration: InputDecoration(
                hintText: "Yeni Anımsatici Ekle",
                hintStyle: TextStyle(color: iconRenk),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: ysyesil),
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: ysyesil),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 8,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // save button
                YeniButon(text: "Kaydet", onPressed: kaydet, ),
                const SizedBox(width: 8),
                // cancel button
                YeniButon(text: "Vazgeç", onPressed: vazgec,  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}