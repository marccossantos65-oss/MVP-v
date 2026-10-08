import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'core/theme/app_theme.dart';
import 'screens/auth_gate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const VaquinhaBetApp());
}

class VaquinhaBetApp extends StatelessWidget {
  const VaquinhaBetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vaquinha Bet',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme, // Using dark theme as the primary identity
      home: const AuthGate(),
    );
  }
}
