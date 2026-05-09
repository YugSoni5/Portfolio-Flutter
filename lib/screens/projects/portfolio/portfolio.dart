import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [
            Text(
              " PORTFOLIO ",
              style: TextStyle(fontFamily: 'poppins', fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
