import 'package:flutter/material.dart';
import 'package:hello_world/models/catatan.dart';

class StlessScreen extends StatelessWidget {
  Catatan catatan;
  StlessScreen({
    this.catatan,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catatan.judul),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              catatan.deskripsi,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tanggal Mulai: ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          size: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          catatan.mulai,
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tanggal Selesai: ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          size: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          catatan.selesai,
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
