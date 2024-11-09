import 'package:flutter/material.dart';
import 'package:shopping_app_ui/screens/startApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartAppView(),
     
    );
  }
}
