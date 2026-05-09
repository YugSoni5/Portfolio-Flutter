import 'package:flutter/material.dart';

import '../../data/ui/themedata.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us", style: TextStyle(fontFamily: 'poppins')),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What is yugsoni.com?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "yugsoni.com is a platform to learn programming more efficiently and effortlessly.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 25),

            Text(
              "Why is it so popular?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "It is popular because this platform teaches programming languages from beginner to advanced levels quickly.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 25),

            Text(
              "Does this platform teach well?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Yes, this platform teaches well in both Hindi and English.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            Text(
              "Check out more things Like visit 'github.com/YugSoni5",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 20,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 30),
            Card(
              color: themeDatas.mainColor,
              elevation: 125,
              shadowColor: themeDatas.mainColor,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "!! Fact !!",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 30,
                        color: themeDatas.whiteColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Did you know this application is made with ?"
                      "Ans => This application is made with the flutter framework !!",
                      style: TextStyle(
                        fontSize: 17,
                        color: themeDatas.whiteColor,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/img/icons/flutter.png"),
                        SizedBox(width: 8),
                        Text("Flutter"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
