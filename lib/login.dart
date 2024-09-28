import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Enter your phone number'),
          const Row(
            children: [
              TextField(),
              TextField(),
            ],
          ),
          ElevatedButton(
              onPressed: () {}, child: const Text('VERIFY YOUR PHONE NUMBER'))
        ],
      ),
    );
  }
}
