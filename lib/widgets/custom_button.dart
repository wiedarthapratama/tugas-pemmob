import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String tulisan;
  final Function fungsi;
  final Color warna;
  CustomButton({this.tulisan, this.fungsi, this.warna});
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      // shadowColor: Colors.red,
      elevation: 1,
      color: warna ?? Colors.blue,
      // clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1, horizontal: 40),
        child: MaterialButton(
          child: Text(tulisan, style: TextStyle(color: Colors.white)),
          onPressed: fungsi,
        ),
      ),
    );
  }
}
