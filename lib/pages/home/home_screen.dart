import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/controller/auth_controller.dart';
import 'package:hello_world/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  final User user;
  HomeScreen(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(user.uid),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              tulisan: 'Logout',
              fungsi: () async {
                await AuthController.signOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
