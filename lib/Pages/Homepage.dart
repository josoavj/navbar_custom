import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navbar_custom/Pages/Files.dart';
import 'package:navbar_custom/Pages/Info.dart'; // Assuming this is your Informations page
import 'package:navbar_custom/Pages/Settings.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "Homepage",
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Your Homepage",
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
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
            selectedIndex: 0, // 'Homepage' is at index 0
            onDestinationSelected: (indexPage) {
              // Helper function to navigate without transition
              void navigateWithoutTransition(Widget page) {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) => page,
                    transitionDuration: Duration.zero, // No transition duration
                    transitionsBuilder:
                        (context, animation1, animation2, child) {
                      return child; // Return the child directly, no animation
                    },
                  ),
                );
              }

              switch (indexPage) {
                case 0:
                // This page - no navigation needed as we are already here
                  break;
                case 1:
                  navigateWithoutTransition(const Files());
                  break;
                case 2:
                  navigateWithoutTransition(const Informations());
                  break;
                case 3:
                  navigateWithoutTransition(Settings());
                  break;
              }
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_filled),
                label: "Homepage",
              ),
              NavigationDestination(
                icon: Icon(Icons.book_sharp),
                label: "Files",
              ),
              NavigationDestination(
                icon: Icon(Icons.info_sharp),
                label: "Informations",
              ),
              NavigationDestination(
                icon: Icon(Icons.settings),
                label: "Settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}