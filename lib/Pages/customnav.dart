import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Files.dart';
import 'Homepage.dart';
import 'Info.dart';
import 'Settings.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int _selectedIndex = 0; // Index de la page actuelle

  final List<Widget> _pages = [
    const HomePage(),
    const FilesPage(),
    const InformationsPage(),
    const SettingsPage(),
  ];

  final List<String> _pageTitles = [
    "Homepage",
    "Files",
    "Informations",
    "Settings",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          _pageTitles[_selectedIndex],
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(0, 20),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: NavigationBar(
            indicatorColor: Colors.blueAccent,
            elevation: 0,
            height: 70,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home_filled), label: "Homepage"),
              NavigationDestination(icon: Icon(Icons.book_sharp), label: "Files"),
              NavigationDestination(icon: Icon(Icons.info_sharp), label: "Informations"),
              NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
            ],
          ),
        ),
      ),
    );
  }
}