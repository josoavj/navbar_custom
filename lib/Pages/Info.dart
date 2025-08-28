// lib/pages/informations_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationsPage extends StatelessWidget {
  const InformationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Your Informations",
        style: GoogleFonts.poppins(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}