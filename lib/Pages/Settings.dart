import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget{
  Homepage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "Settings",
           style: GoogleFonts.poppins(
            fontSize: 15, 
            color: Colors.white, 
            fontWeight: FontWeight.w800)),
      ),
      body:  Center(
        child: Text(
          "My Settings",
          style: GoogleFonts.poppins(
            fontSize: 20, 
            color: Colors.black, 
            fontWeight: FontWeight.w400),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(0, 20))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: NavigationBar(
            indicatorColor: Colors.white,
            elevation: 0,
            height: 70,
            selectedIndex: 3,
            onDestinationSelected: (index){
              switch (index){
                case 0:
                   
                break;

                case 1:
                break;

                case 2:
                break;

                case 3:
                break;
              }
            },
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home_filled), label:"Homepage" ),
              NavigationDestination(icon: Icon(Icons.book_sharp), label: "Files"),
              NavigationDestination(icon: Icon(Icons.info_sharp), label: "Informations"),
              NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ]),
        )
      ),
    );
  }
}