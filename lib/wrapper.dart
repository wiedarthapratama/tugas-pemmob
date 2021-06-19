import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/pages/auth/login_screen.dart';
import 'package:hello_world/pages/home/home_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    return (user != null) ? HomeScreen(user) : LoginScreen();
  }
}
