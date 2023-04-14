import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todolist/colors/colors.dart';

class Listeler extends StatelessWidget {
  final baslik;
  final tamamlandi;
  Function(bool?)? degisim;
  Function(BuildContext)? listesil;

  Listeler(
      {Key? key,
      required this.baslik,
      required this.tamamlandi,
      required this.degisim,
      required this.listesil})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(left: 12.0, right: 12, top: 20),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: listesil,
              icon: Icons.delete,
              backgroundColor: yckirmizi,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(12),topRight: Radius.circular(12)  ),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(23),
          decoration: BoxDecoration(
            color: beyaz3,
            border: Border.all(color: ycpetrol),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topLeft: Radius.circular(12)),
          ),
          child: Row(
            children: [
              Checkbox( shape: CircleBorder(),
                  value: tamamlandi,
                onChanged: degisim,
                fillColor: MaterialStateColor.resolveWith((states) => yckirmizi),
              ),
              Text(
                baslik,
                style: Theme.of(context).textTheme.titleLarge?.copyWith( color: siyah,
                    decoration: tamamlandi
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,decorationColor: yckirmizi),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
