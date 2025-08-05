import 'package:coin_sensei_flutter/screens/auth/login_screen/login_form.dart';
import 'package:coin_sensei_flutter/screens/auth/login_screen/welcome_back.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [WelcomeBack(), LoginForm()],
            ),
          ),
        ],
      ),
    );
  }
}
