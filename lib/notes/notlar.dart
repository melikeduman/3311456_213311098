import 'package:flutter/material.dart';
import 'package:todolist/Widgets/not_bloklari.dart';
import '../Widgets/alert_dialog2.dart';
import '../colors/colors.dart';

class Notlar extends StatefulWidget {
  const Notlar({Key? key}) : super(key: key);

  @override
  State<Notlar> createState() => _NotlarState();
}

class _NotlarState extends State<Notlar> {
  List not = [
    ["Deneme Text","Denemee",],
    ["Sdk Güncelle ", "İyi akşamlar"],
  ];
  final _bcontroller = TextEditingController();
  final _ncontroller = TextEditingController();
  void notEkle(){
    showDialog(
      context: context,
      builder: (context){
        return DialogKutusu2(controller: _bcontroller,
          controller2: _ncontroller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),);
      },
    );
  }
  void saveNewTask() {
    setState(() {
      not.add([_bcontroller.text, _ncontroller.text]);
      _bcontroller.clear();
      _ncontroller.clear();
    });
    Navigator.of(context).pop();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: beyaz4,
        padding: EdgeInsets.only(top: 50),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                childAspectRatio: 2/1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 40),
            itemCount: not.length,
            itemBuilder: (context,index){
              return NotBloklari(
                baslik: not[index][0],
                notum: not[index][1],);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ycpetrol,
        onPressed: notEkle,
        child: Icon(Icons.add),
      ),

    );

  }
}
