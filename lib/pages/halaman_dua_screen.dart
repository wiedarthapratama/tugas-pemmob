import 'package:flutter/material.dart';

class HalamanDuaScreen extends StatelessWidget {
  final String fakultas, prodi, nim, nama, jenkel;
  HalamanDuaScreen(
      {this.fakultas, this.prodi, this.nim, this.nama, this.jenkel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Dua'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hasil:'),
            ItemWidget(nama: 'Fakultas', hasil: fakultas),
            ItemWidget(nama: 'Prodi', hasil: prodi),
            ItemWidget(nama: 'Nim', hasil: nim),
            ItemWidget(nama: 'Nama', hasil: nama),
            ItemWidget(nama: 'Jenkel', hasil: jenkel),
          ],
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key key,
    @required this.hasil,
    @required this.nama,
  }) : super(key: key);

  final String nama, hasil;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$nama: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(hasil),
      ],
    );
  }
}
