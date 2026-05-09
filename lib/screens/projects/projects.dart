import 'package:flutter/material.dart';
import 'package:my_app/data/ui/themedata.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("THE PROJECTS", style: TextStyle(fontFamily: 'poppins')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Feature Projects !!",
                style: TextStyle(fontSize: 20, fontFamily: 'poppins'),
              ),
              Card(
                elevation: 125,
                shadowColor: themeDatas.mainColor,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "!! Portfolio !!",
                        style: TextStyle(fontFamily: 'poppins', fontSize: 30),
                      ),
                      Text(
                        "This is the project which contains about us page, home page also contact us page 's PURE backend",
                        style: TextStyle(fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      FilledButton(
                        onPressed: onPressed,
                        child: Text("Download"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 125,
                shadowColor: themeDatas.mainColor,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "!! A Calculator !!",
                        style: TextStyle(fontFamily: 'poppins', fontSize: 30),
                      ),
                      Text(
                        "This is the project which can do the basic calculation such as add subtract multiply and divide ",
                        style: TextStyle(fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "This project will come soon",
                        style: TextStyle(fontSize: 16, fontFamily: "poppins"),
                      ),
                      SizedBox(height: 20),
                      FilledButton(
                        onPressed: onPressed,
                        child: Text("Download"),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Text(
                "More projects will add soon",
                style: TextStyle(fontSize: 20, fontFamily: 'poppins'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onPressed() {}
}
