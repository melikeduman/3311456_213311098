import 'package:flutter/material.dart';
import 'package:todolist/colors/colors.dart';
import 'animsatici_giris.dart';

class YeniAnimsatici extends StatefulWidget {
  const YeniAnimsatici({Key? key}) : super(key: key);
  @override
  State<YeniAnimsatici> createState() => _YeniAnimsaticiState();
}

class _YeniAnimsaticiState extends State<YeniAnimsatici> with NavigatorManager{
  final DateTime _seciliTarih = DateTime.now();
  var tfTarih = TextEditingController();
  var tfSaat = TextEditingController();
  final _bController = TextEditingController();
  final _nController =TextEditingController();

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: beyaz1,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kirmizi2,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          color: beyaz1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Yeni Anımsatıcı",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: iconRenk),
              ),
              TextFormField(
               /* onFieldSubmitted: (text){
                  setState(() {
                   _itemEkle(_bController.text);
                  });
                },*/
                controller: _bController,
                autofocus: false,
                maxLines: 1,
                cursorColor: iconRenk,
                decoration: InputDecoration(
                  hintText: "Başlık",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: aYesil2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: aYesil2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                ),
              ),
              TextFormField(
                controller: _nController,
                autofocus: false,
                maxLines: 6,
                cursorColor: iconRenk,
                decoration: InputDecoration(
                  hintText: "Notlar",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: aYesil2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: aYesil2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: tfTarih,
                readOnly: true,
                autofocus: false,
                cursorColor: iconRenk,
                decoration: InputDecoration(
                  hintText:
                      "${_seciliTarih.day}/${_seciliTarih.month}/${_seciliTarih.year}",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: aYesil2),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: aYesil2),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.date_range,
                      color: kirmizi2,
                    ),
                    onPressed: () {
                      showDatePicker(
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2030),
                              context: context)
                          .then((alinantarih) {
                        setState(() {
                          tfTarih.text =
                              "${alinantarih?.day}/ ${alinantarih?.month}/ ${alinantarih?.year}";
                        });
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: tfSaat,
                readOnly: true,
                autofocus: false,
                cursorColor: iconRenk,
                decoration: InputDecoration(
                  hintText: "${_seciliTarih.hour} : ${_seciliTarih.minute}",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: aYesil2),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: aYesil2),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.more_time_outlined,
                      color: kirmizi2,
                    ),
                    onPressed: () {
                      showTimePicker(
                              initialTime:
                                  TimeOfDay.fromDateTime(DateTime.now()),
                              context: context)
                          .then((alinantarih) {
                        setState(() {
                          tfSaat.text =
                              "${alinantarih?.hour} : ${alinantarih?.minute}";
                        });
                      });
                    },
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: ycpetrol),
                onPressed: () {
                },
                child: Text("Kaydet",),

              ),
            ],
          ),
        ),
      ),
    );

  }
}
