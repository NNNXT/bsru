import 'package:demo_comsci/src/otp.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const String route = '/login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String mobileNumber = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'ยินดีต้อนรับสู่ OPENTALK',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'LongTextttttttttttttttttttttttttttt',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  'LongTextttttttttttttttttttttttttttt',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 48),
                TextFormField(
                  onChanged: (value) {
                    setState(() {
                      mobileNumber = value;
                    });
                  },
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: mobileNumber.isEmpty
                      ? null
                      : () {
                          Navigator.pushNamed(
                            context,
                            OTP.route,
                            arguments: {'mobileNumber': mobileNumber},
                          );
                        },
                  child: const Text('ยืนยันด้วยเบอร์โทรศัพท์'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
