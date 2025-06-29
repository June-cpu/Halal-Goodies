import 'package:flutter/material.dart';
import 'package:halal_goodies/services/firebase_initializer.dart';
import 'screens/register_screen.dart';

void main() async {
  await initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterScreen(),
    );
  }
}
