import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Settings",
        style: GoogleFonts.poppins(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}