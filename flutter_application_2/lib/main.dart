import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 134, 58, 141),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          height: double.infinity,
          decoration: BoxDecoration(color: Color.fromARGB(255, 134, 58, 141)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.jpeg"),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Florinda Hasani',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.lato().fontFamily,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mobile App. Dev.',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: GoogleFonts.yesevaOne().fontFamily,
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
  ));
}
