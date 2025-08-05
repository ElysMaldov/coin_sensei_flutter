import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 24,
        children: [
          // Email
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
              hintText: "Enter your email",
            ),
          ),

          // Password
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
              hintText: "Enter password",
            ),
          ),

          // Remember me

          // Login Button

          // Or

          // Socials

          // Don't have account? Register
        ],
      ),
    );
  }
}
