// import 'package:algad_almushriq/screens/login.dart';
import 'package:algad_almushriq/screens/profile_screen.dart';
// import 'package:algad_almushriq/screens/register.dart';
import 'package:algad_almushriq/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme.customTheme,
      home: ProfileScreen(),
    );
  }
}
