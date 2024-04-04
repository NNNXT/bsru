import 'package:demo_comsci/src/home.dart';
import 'package:demo_comsci/src/login.dart';
import 'package:demo_comsci/src/otp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Home.route,
      routes: {
        Login.route: (context) => const Login(),
        OTP.route: (context) => const OTP(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
