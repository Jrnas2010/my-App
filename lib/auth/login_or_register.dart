import 'package:flutter/material.dart';
import 'package:my_app/component/my_button.dart';
import 'package:my_app/page/login_page.dart';
import 'package:my_app/page/register_page.dart';


class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Authentication",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  const Text(
                    "Authenticate to access your vital information",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Image.asset('images/app_icon.png')),
                  MyButton(text: "LOGIN", press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                  }),
                  MyButton(text: "SIGN UP", press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const RegisterPage()));
                  }),
                ],
              ),
            ),
          )),
    );
  }
}