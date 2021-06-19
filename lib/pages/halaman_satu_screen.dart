import 'package:flutter/material.dart';
import 'package:hello_world/pages/halaman_dua_screen.dart';

class HalamanSatuScreen extends StatefulWidget {
  @override
  _HalamanSatuScreenState createState() => _HalamanSatuScreenState();
}

class _HalamanSatuScreenState extends State<HalamanSatuScreen> {
  TextEditingController namaCtrl = TextEditingController();
  TextEditingController nimCtrl = TextEditingController();
  TextEditingController prodiCtrl = TextEditingController();
  TextEditingController fakultasCtrl = TextEditingController();
  bool cbLk = false, cbPr = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Satu'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                      "https://www.esaunggul.ac.id/wp-content/uploads/2012/07/logo-ke-bwh.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InputWidget(
                namaCtrl: fakultasCtrl,
                judul: 'Fakultas',
              ),
              InputWidget(
                namaCtrl: prodiCtrl,
                judul: 'Prodi',
              ),
              InputWidget(
                namaCtrl: nimCtrl,
                judul: 'Nim',
              ),
              InputWidget(
                namaCtrl: namaCtrl,
                judul: 'Nama',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        'Jenkel:',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 295,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: cbLk,
                                    onChanged: (val) {
                                      setState(() {
                                        cbLk = val;
                                        cbPr = !val;
                                      });
                                    }),
                                Text('Laki-laki'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: cbPr,
                                    onChanged: (val) {
                                      setState(() {
                                        cbLk = !val;
                                        cbPr = val;
                                      });
                                    }),
                                Text('Perempuan'),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  String fakultas = fakultasCtrl.text;
                  String prodi = prodiCtrl.text;
                  String nim = nimCtrl.text;
                  String nama = namaCtrl.text;
                  String jenkel;
                  if (cbLk) {
                    jenkel = "Laki-laki";
                  }
                  if (cbPr) {
                    jenkel = "Perempuan";
                  }
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HalamanDuaScreen(
                            fakultas: fakultas,
                            prodi: prodi,
                            nim: nim,
                            nama: nama,
                            jenkel: jenkel,
                          )));
                },
                child: Text('Simpan'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InputWidget extends StatelessWidget {
  const InputWidget({Key key, @required this.namaCtrl, @required this.judul})
      : super(key: key);

  final TextEditingController namaCtrl;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$judul:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 280,
            child: TextFormField(
              decoration: InputDecoration(hintText: '$judul'),
              controller: namaCtrl,
            ),
          ),
        ],
      ),
    );
  }
}
