import 'package:flutter/material.dart';
import 'view/login_view.dart';

void main() {
  runApp(MedikitaApp());
}

class MedikitaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediKita',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
