import 'package:flutter/material.dart';
import 'package:todolist/Widgets/yeni_buton.dart';
import 'package:todolist/colors/colors.dart';
class DialogKutusu2 extends StatelessWidget {
  final controller;
  final controller2;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogKutusu2({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel, this.controller2,
  });

  @override
  Widget build(BuildContext context) {


    return AlertDialog( backgroundColor: beyaz1,
      content: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              autofocus: false,
              cursorColor: ycpetrol,
              decoration: InputDecoration(
                hintText: "Başlık",
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
            TextField(
              controller: controller2,
              autofocus: false,
              cursorColor: ycpetrol,
              decoration: InputDecoration(
                hintText: "Notlar",
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
            SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // save button
                YeniButon(text: "Kaydet", onPressed: onSave, ),
                const SizedBox(width: 8),
                // cancel button
                YeniButon(text: "Sil", onPressed: onCancel,  ),
              ],
            ),
          ],
        ),
      ),);
  }


}