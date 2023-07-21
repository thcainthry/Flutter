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
              SizedBox(height: 20),
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
              SizedBox(height: 20),
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
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 60,
                      width: 300,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(5),
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/icon_phone.png"),
                                ),
                              ),
                            ],
                          ),
                          const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '+383 44 123 456',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              ])
                        ],
                      ))
                ],
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 60,
                      width: 300,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(5),
                                child: const CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/icon_mail.png"),
                                ),
                              ),
                            ],
                          ),
                          const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'hasani.florinda@gmail.com',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              ])
                        ],
                      ))
                ],
              )
            ],
          ),
        )),
  ));
}
