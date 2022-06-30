// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      // theme: ThemeData(
      //   primarySwatch: Colors.teal,
      // ),
      home: Scaffold(
        body: MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          toolbarHeight: 250, // default is 56
          // toolbarOpacity: 0.2,
          title: Column(
            children: const [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("faiq.jpeg"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                  "Faiqotul Himma",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text("Collage Student", style: TextStyle(height: 1, fontSize: 14))
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: 400,
              margin: const EdgeInsets.only(top: 35),
              child: Column(
                children: [
                  const Text("About me",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                      margin: const EdgeInsets.all(15),
                      child: Text(
                          "Hi, currently i'm studying at the Faculty of Engineering and Informatics at the Pendidikan Nasional Univercity.",
                          maxLines: 4,
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5)))),
                  Container(
                    width: 155,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black, width: 0.1))),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Skills",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "5",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 18.0,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text("English",
                                      style: TextStyle(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "4",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 18.0,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text("CSS",
                                      style: TextStyle(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "3",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 18.0,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text("JavaScript",
                                      style: TextStyle(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "3",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 18.0,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text("Dart",
                                      style: TextStyle(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 155,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black, width: 0.1))),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Find me on",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.facebook,
                                  color: Colors.blueAccent,
                                  size: 20.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.whatsapp,
                                  color: Colors.blueAccent,
                                  size: 20.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.telegram,
                                  color: Colors.blueAccent,
                                  size: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}