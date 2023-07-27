import 'package:expense_tracker/widgets/expenses_tracker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(fontFamily: GoogleFonts.aboreto().fontFamily, color: Colors.green),
        titleMedium: TextStyle(fontFamily: GoogleFonts.abel().fontFamily, color: Colors.red),
      ),
    ),
    home: const Expense(),
  ));
}
