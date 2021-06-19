import 'package:flutter/material.dart';
import 'package:hello_world/controller/auth_controller.dart';
import 'package:hello_world/widgets/custom_button.dart';
import 'package:hello_world/widgets/custom_input.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _pswdCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomInput(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email', border: InputBorder.none),
                  controller: _emailCtrl,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomInput(
                  child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password', border: InputBorder.none),
                controller: _pswdCtrl,
              )),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                tulisan: 'Sign In Anonymous',
                fungsi: () async {
                  await AuthController.signInAnonymous();
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    tulisan: 'Sign Up',
                    fungsi: () async {
                      try {
                        await AuthController.signUp(
                            _emailCtrl.text, _pswdCtrl.text);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(e.toString())));
                      }
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomButton(
                    tulisan: 'Sign In',
                    fungsi: () async {
                      try {
                        await AuthController.signIn(
                            _emailCtrl.text, _pswdCtrl.text);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(e.toString())));
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
