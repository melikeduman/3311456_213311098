import 'package:flutter/material.dart';
import 'package:todolist/animsatici/tamamlanmis.dart';
import 'package:todolist/animsatici/zamanlanmis.dart';
import 'package:todolist/animsatici/bugun.dart';
import 'package:todolist/colors/colors.dart';
import 'package:todolist/animsatici/yeni_ekle.dart';
import 'package:todolist/animsatici/tumu.dart';
class AnimsaticiGiris extends StatefulWidget {
  const AnimsaticiGiris({Key? key}) : super(key: key);

  @override
  State<AnimsaticiGiris> createState() => _AnimsaticiGirisState();
}
class _AnimsaticiGirisState extends State<AnimsaticiGiris> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.only(top: 10),
        crossAxisCount: 2,
        childAspectRatio: 2/1,
        children: [
          InkWell(
            onTap: (){
              navigateToWidget(context, All(),);
            },
            child: Card(
              child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.date_range,
                      color: yckirmizi,
                      size: 30,
                    ),
                    Text("Tümü",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: iconRenk),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              navigateToWidget(context, Timed(),);
            },
            child: Card(
              child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.timelapse,
                      color: ysyesil,
                      size: 30,
                    ),
                    Text("Zamanlanmış",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: iconRenk),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              navigateToWidget(context, Today(),);
            },
            child: Card(
              child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.folder_open,
                      color: ycpetrol,
                      size: 30,
                    ),
                    Text("Bugün",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: iconRenk),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              navigateToWidget(context, Completed());
            },
            child: Card(
              child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.done_outline,
                      color: ycturuncu,
                      size: 30,
                    ),
                    Text("Tamamlanmış",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: iconRenk),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
            ),
          ),
         // ListText(),
        ],

      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton.extended(
              elevation: 0,
              extendedPadding: EdgeInsets.only(left: 0),
              backgroundColor: Colors.transparent,
              onPressed: (){
                navigateToWidget(context, YeniAnimsatici());
              },
              label: Text("Yeni Anımsatıcı",style: Theme.of(context).textTheme.subtitle1?.copyWith(color: yckirmizi)),
              icon: Icon(Icons.add_circle_outline_rounded,color: yckirmizi,)
          ),
          FloatingActionButton.extended(
              elevation: 0,
              backgroundColor: Colors.transparent,
              onPressed: (){},
              label: Text("Liste Ekle",style: Theme.of(context).textTheme.subtitle1?.copyWith(color: yckirmizi)),
              icon: Icon(Icons.list_alt_outlined,color: yckirmizi,)
          ),
        ],
      ),
    );
  }
}

mixin NavigatorManager{// constractırsız bir class kullanımı
  void navigateToWidget(BuildContext context, Widget widget){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context){
          //Navigator.pop(context);
         // Icon(Icons.arrow_back_ios,color: kirmizi2,);
          return widget;
        })
    );
  }
  void navigateToWidget2(BuildContext context,Widget widget){
    Navigator.of(context).push(
      showModalBottomSheet(
        isScrollControlled: true,
        builder:(context){
        return FractionallySizedBox( heightFactor: 0.9,
          child: widget);
      }, context: context,
        //fullscreenDialog: false,
        //allowSnapshotting: false,
        //settings: const RouteSettings(), context: context,
      ) as Route<Object?>,);

  }
}

