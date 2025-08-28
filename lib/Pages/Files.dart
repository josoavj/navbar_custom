import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilesPage extends StatelessWidget {
  const FilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Files",
        style: GoogleFonts.poppins(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}