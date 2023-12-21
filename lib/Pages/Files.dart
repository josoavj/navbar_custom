import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navbar_custom/Pages/Homepage.dart';
import 'package:navbar_custom/Pages/Info.dart';
import 'package:navbar_custom/Pages/Settings.dart';

class Files extends StatelessWidget{
  const Files({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "Files",
           style: GoogleFonts.poppins(
            fontSize: 15, 
            color: Colors.white, 
            fontWeight: FontWeight.w800)),
      ),
      body:  Center(
        child: Text(
          "My files",
          style: GoogleFonts.poppins(
            fontSize: 20, 
            color: Colors.black, 
            fontWeight: FontWeight.w400),
        ),
      ),
      // Comment supprimer les transition?
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(0, 20))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: NavigationBar(
            indicatorColor: Colors.blueAccent,
            elevation: 0,
            height: 70,
            selectedIndex: 1,
            onDestinationSelected: (indexPage){
              switch (indexPage){
                case 0:
                   Navigator.push(context,  MaterialPageRoute(builder: (context)=>Homepage()));
                break;
      
                case 1:
                   // This Page
                break;

                case 2:
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Informations()));
                break;

                case 3:
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
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