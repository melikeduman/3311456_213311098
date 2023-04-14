import 'package:flutter/material.dart';
import 'package:todolist/Widgets/alert_dialog.dart';
import 'package:todolist/animsatici/animsatici_giris.dart';
import '../Widgets/list_tile.dart';
import '../colors/colors.dart';

class All extends StatefulWidget {
  All({
    Key? key,
  }) : super(key: key);

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> with NavigatorManager {
  List yapilacaklar = [
    ["Deneme Text", false],
    ["Sdk Güncelle ", false],
    
  ];
  final _controller = TextEditingController();

  void checkboxDegisim(bool? value, int index) {
    setState(() {
      yapilacaklar[index][1]= !yapilacaklar[index][1];
    });
  }
  void yeniEkle(){
    showDialog(
        context: context,
        builder: (context){
          return DialogKutusu(controller: _controller,
            kaydet: yeniKayit,
            vazgec: () => Navigator.of(context).pop(),);
        },
    );
  }
 void yeniKayit() {
    setState(() {
      yapilacaklar.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
   // db.updateDataBase();
  }
  void listsil(int index){
setState(() {
  yapilacaklar.removeAt(index);
});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: beyaz1,
      appBar:_buildAppBar(),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20),
        itemCount: yapilacaklar.length,
        itemBuilder: (context, index) {
          return Listeler(
              baslik: yapilacaklar[index][0],
              tamamlandi: yapilacaklar[index][1],
              degisim: (value) => checkboxDegisim(value,index),
            listesil: (context) => listsil(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ycpetrol,
        onPressed: yeniEkle,
        child: Icon(Icons.add),
      ),
    );
  }
  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: beyaz1,
      leading:  IconButton(
        icon: Icon(Icons.arrow_back_ios,color: yckirmizi,),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      title:
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
    );}
}
