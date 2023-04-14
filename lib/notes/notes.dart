import 'package:flutter/material.dart';
import 'package:todolist/colors/colors.dart';
class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: beyaz,
      padding: EdgeInsets.only(top: 20),
      height: 270,
      width: 400,
      child: GridView.count(
        padding: EdgeInsets.only(top: 30),
        crossAxisSpacing: 15,
        mainAxisSpacing: 40,
        crossAxisCount: 2,
        childAspectRatio: 2/1,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                child:Positioned(
                top: -20,
                child:
                Container(
                  child: Text("",
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(color: iconRenk),
                  textAlign: TextAlign.center,
                  ),
                  width: 100,
                  height: 40,
                  decoration:
                  BoxDecoration(
                      color: yckirmizi,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(10.0),)
                  ),),
              ) ,
              ),
              Container(
                decoration: BoxDecoration(color: beyaz3,
                border: Border.all(color: ycpetrol),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0) ,
                ),
              ),
              ),
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(child:Positioned(
                top: -20,
                child: Container(width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: ysyesil,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(10.0),)
                  ),),
              ) ,
              ),
              Container(decoration: BoxDecoration(color: beyaz3,
                border: Border.all(color: ycpetrol),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0) ,
                ),
              ),
              ),
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(child:Positioned(
                top: -20,
                child: Container(width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: ycpetrol,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(10.0),)
                  ),),
              ) ,
              ),
              Container(decoration: BoxDecoration(color: beyaz3,
                border: Border.all(color: ycpetrol),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0) ,
                ),
              ),
              ),
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(child:Positioned(
                top: -20,
                child: Container(width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: ycturuncu,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(10.0),)
                  ),),
              ) ,
              ),
              Container(decoration: BoxDecoration(color: beyaz3,
                border: Border.all(color: ycpetrol),
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0) ,
                  ),
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
