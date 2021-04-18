import 'package:flutter/material.dart';
import 'package:hello_world/models/catatan.dart';
import 'package:hello_world/widgets/card_catatan.dart';

class StfulScreen extends StatefulWidget {
  @override
  _StfulScreenState createState() => _StfulScreenState();
}

class _StfulScreenState extends State<StfulScreen> {
  List<Catatan> items = getCatatan();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('StateFull Screen'),
        ),
        body: ListView.builder(
          itemBuilder: (context, i) {
            return CardCatatan(catatan: items[i]);
          },
          itemCount: items.length,
        ));
  }
}
