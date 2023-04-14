import 'package:flutter/material.dart';
import 'package:todolist/animsatici/animsatici_giris.dart';
import 'package:todolist/colors/colors.dart';
import '../notes/notlar.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: beyaz3,
        appBar: _buildAppBar(),
        body:Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(height: 40,
              decoration: BoxDecoration(
                color: ycpetrol2,
                borderRadius: BorderRadius.circular(25.0),
              ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: yskoyuyesil,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                    labelColor: beyaz1,
                    tabs: [
                  Tab(text: "Anımsatıcılar",),
                  Tab(text: "Notlar",),
                ]),
              ),
              Expanded(child: TabBarView(
                children: [
                AnimsaticiGiris(),
                Notlar(),
              ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: beyaz4,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      title:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu,
          color: ycturuncu,
          size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/avatar.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

