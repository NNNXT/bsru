import 'package:demo_comsci/src/login.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String route = '/';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/image/bsru.png',
                  width: 64,
                ),
                const SizedBox(height: 8),
                const Text(
                  'ยินดีต้อนรับสู่ OPENTALK',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                const Text(
                  'LongTextttttttttttttttttttttttttttt',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Login.route);
                },
                child: const Text('เข้าสู่ระบบ'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
