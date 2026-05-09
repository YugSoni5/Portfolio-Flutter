import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us", style: TextStyle(fontFamily: 'poppins')),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Text(
                "Enter you Name",
                style: TextStyle(fontSize: 22.5, fontFamily: 'poppins'),
              ),
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
                autocorrect: true,
              ),
              SizedBox(height: 30),
              Text(
                "Enter you Phone Number ",
                style: TextStyle(fontSize: 22.5, fontFamily: 'poppins'),
              ),
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
                autocorrect: true,
                autofocus: true,
              ),
              SizedBox(height: 30),
              FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Text("Submit It !!", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
