import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xpot/screens/login.dart';

final theme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.barlowTextTheme(),
    primaryColor: const Color(0xFF4E4C4C));

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: theme,
    home: const LoginScreen(),
  ));
}
