import 'package:flutter/material.dart';
import 'package:my_app/data/ui/themedata.dart';
import 'package:my_app/screens/aboutus/aboutus.dart';
import 'package:my_app/screens/contact/contact.dart';
import 'package:my_app/screens/projects/projects.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "yugsoni.com",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: themeDatas.whiteColor,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: 'poppins',
          ),
        ),
        centerTitle: true,
        backgroundColor: themeDatas.mainColor,
      ),
      body: Scrollbar(
        interactive: true,
        trackVisibility: true,
        thickness: 12,
        thumbVisibility: true,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Welcome to the yugsoni.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'poppins',
                ),
                textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.all(10)),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FilledButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Aboutus(),
                                ),
                              );
                            },
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            child: Text("About Us"),
                          ),

                          Padding(padding: EdgeInsets.all(5)),

                          FilledButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Projects(),
                                ),
                              );
                            },
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            child: Text("Explore Projects"),
                          ),
                          Padding(padding: EdgeInsets.all(5)),

                          FilledButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Contact(),
                                ),
                              );
                            },
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            child: Text("Contact Us"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Text(
                            "Feature Projects !!",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'poppins',
                            ),
                          ),
                          Card(
                            elevation: 125,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadowColor: themeDatas.mainColor,
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "!! Portfolio !!",
                                    style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "This is the project which contains about us page, home page also contact us page 's PURE backend",
                                    style: TextStyle(fontSize: 17),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 5),
                                  FilledButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Projects(),
                                        ),
                                      );
                                    },
                                    child: Text("Download"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "More Featured projects will add soon !!",
                            style: TextStyle(
                              fontSize: 27,
                              fontFamily: 'poppins',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text("UNDER DEVELOPMENT PROJECTS "),

                          Card(
                            elevation: 125,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadowColor: themeDatas.mainColor,
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "!! my_app !!",
                                    style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "This is the project which I am making now",
                                    style: TextStyle(fontSize: 17),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "It will soon come to all of you who are watching this ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
