import 'package:flutter/material.dart';

class OTP extends StatelessWidget {
  static const String route = '/otp';
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    String mobileNumber = arguments['mobileNumber'];
    TextEditingController controller = TextEditingController();
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
                Text(
                  'ใส่รหัสยืนยัน $mobileNumber',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'LongTextttttttttttttttttttttttttttt',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 48),
                TextFormField(
                  controller: controller,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
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
