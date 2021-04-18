import 'package:flutter/material.dart';
import 'package:hello_world/models/catatan.dart';
import 'package:hello_world/pages/stless_screen.dart';

class CardCatatan extends StatelessWidget {
  Catatan catatan;
  CardCatatan({
    this.catatan,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StlessScreen(catatan: catatan),
            ));
      },
      onLongPress: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: new Text("Perhatian"),
                content: new Text("Apakah Anda Yakin Ingin Menghapus Ini?"),
                actions: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('Tidak')),
                  ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('Ya')),
                ],
              )),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Text(catatan.no.toString()),
          ),
          title: Text(catatan.judul),
          subtitle: Text(
            catatan.deskripsi,
            maxLines: 2,
          ),
          // trailing: Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     IconButton(
          //         color: Colors.yellow,
          //         icon: Icon(Icons.edit),
          //         onPressed: () {
          //           print('edit');
          //         }),
          //     IconButton(
          //         color: Colors.red,
          //         icon: Icon(Icons.delete),
          //         onPressed: () {
          //           print('hapus');
          //         })
          //   ],
          // ),
        ),
      ),
    );
  }
}
