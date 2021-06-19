import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final Widget child;
  CustomInput({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        // height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 20),
            child: child));
  }
}
