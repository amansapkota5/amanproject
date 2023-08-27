import 'package:csit4thsemnotes/AIchap.dart';
import 'package:csit4thsemnotes/Cnchap.dart';
import 'package:csit4thsemnotes/ModelSet.dart';
import 'package:csit4thsemnotes/Oschap.dart';
import 'package:csit4thsemnotes/Tocchap.dart';
import 'package:flutter/material.dart';
import 'package:csit4thsemnotes/Dbchap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var images = [
    "https://schools.au.reachout.com/-/media/schools/images/online-behaviour/180307_reachout_orange_032_srgb.jpg",
    "https://www.howtogeek.com/wp-content/uploads/2022/01/apple-notes-app-store.jpg?height=200p&trim=2,2,2,2",
    "https://futureskillsprime.in/sites/default/files/inline-images/iStock-966248982.jpg",
    "https://1.bp.blogspot.com/-gl8EQrxBYF8/YCg4EhU7tRI/AAAAAAAABFo/3T32OsYPW_spQTIweRhjSiIQZ5xHpHqKwCLcBGAsYHQ/s16000/DBMS%2BFull%2BForm%2B%2528www.tutorialsmate.com%2529.png",
    "https://artoftesting.com/wp-content/uploads/2022/02/operating-system.png"
  ];
  var recommendedvideoimages = [
    "https://i.ytimg.com/vi/pnyXgIXpKnc/maxresdefault.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/800px-Tux.svg.png",
    "https://i.ytimg.com/vi/D9eF_B8URnw/maxresdefault.jpg",
  ];
  var subheading = ["Convert NFA to DFA", "Linux Case Study", "Turing Machine"];
  var launcher = [
    "https://youtu.be/LEigAZN6RdY",
    "http://www.eie.polyu.edu.hk/~em/it0506pdf/2%20Linux.pdf",
    "https://youtu.be/LEigAZN6RdY"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Container(
            color: Colors.blue.shade900,
            height: 91,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "NEB & TU NOTES",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        "Choose your course right now",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(bottom: 4.0),
          sliver: SliverToBoxAdapter(
            child: Container(
              color: Colors.blue.shade900,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/covergirl.png",
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "QUICK AND EASY LEARNING",
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                      Text(
                        "APP DEVELOPED FOR NOTES",
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                      Text(
                        "PURPOSE.CAN BE INSTALLED ON",
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                      Text(
                        "BOTH ANDROID AND IOS.THIS",
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                      Text(
                        "APP WAS PUBLISHED ON",
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                      Text(
                        "july 1ST",
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                      SizedBox(height: 45),
                      Text(
                        "-DEVELOPED BY:AMAN SAPKOTA ©",
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 10),
          sliver: SliverToBoxAdapter(
            child: Center(
                child: Text(
              "COURSES",
              style: TextStyle(color: Colors.red, fontSize: 18),
            )),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 8.0),
          sliver: SliverGrid(
              delegate: SliverChildListDelegate([
                Card(
                  margin: EdgeInsets.all(10.0),
                  elevation: 2,
                  child: Container(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dbchap()));
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(40.0)),
                                height: 65,
                                width: 65,
                                child: Icon(FontAwesomeIcons.database,
                                    color: Colors.white, size: 35)),
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          "Database",
                          style: TextStyle(fontSize: 9),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Aichap()));
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(40.0)),
                                height: 65,
                                width: 65,
                                child: Icon(FontAwesomeIcons.peopleArrows,
                                    color: Colors.white, size: 35)),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Artificial Intelligent",
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    elevation: 2.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (conntext) => Oschap()));
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40.0)),
                                height: 65,
                                width: 65,
                                child: Icon(FontAwesomeIcons.computer,
                                    color: Colors.white, size: 35)),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              "Operating System",
                              style: TextStyle(fontSize: 8),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    elevation: 2.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (conntext) => Cnchap()));
                    });
                  },
                  child: Card(
                    margin: EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(40.0)),
                                height: 65,
                                width: 65,
                                child: Icon(FontAwesomeIcons.networkWired,
                                    color: Colors.white, size: 35)),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Center(
                              child: Text("Computer Network",
                                  style: TextStyle(fontSize: 8)))
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    elevation: 2.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (conntext) => Tocchap()));
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Card(
                      elevation: 2.0,
                      margin: EdgeInsets.all(10.0),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius:
                                          BorderRadius.circular(40.0)),
                                  height: 65,
                                  width: 65,
                                  child: Icon(FontAwesomeIcons.calculator,
                                      color: Colors.white, size: 35)),
                            ),
                            SizedBox(
                              height: 7.0,
                            ),
                            Center(
                                child: Text(
                              "Computation Theory",
                              style: TextStyle(fontSize: 8),
                            ))
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ModelSet()));
                    });
                  },
                  child: Card(
                    elevation: 2.0,
                    margin: EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(40.0)),
                                height: 65,
                                width: 65,
                                child: Icon(FontAwesomeIcons.computer,
                                    color: Colors.white, size: 35)),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Model Sets",
                            style: TextStyle(fontSize: 9),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 0)),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 18.0),
          sliver: SliverToBoxAdapter(
              child: Text(
            "Recommended Topics ",
            style: TextStyle(fontSize: 16.0),
          )),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Card(
            elevation: 3.0,
            child: ListTile(
              title: Text(
                "Convert NFA TO DFA",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              subtitle: Text("Subject-TOC"),
              leading: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: Text("1")),
              trailing: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade900,
                  ),
                  onPressed: () {
                    setState(() {
                      launch("https://youtu.be/LEigAZN6RdY");
                    });
                  },
                  child: Text(
                    "Play",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              title: Text(
                "Turing Machine",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              subtitle: Text("Subject-TOC"),
              leading: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: Text("2")),
              trailing: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade900,
                  ),
                  onPressed: () {
                    setState(() {
                      launch("https://youtu.be/LE_7krgRGt8");
                    });
                  },
                  child: Text(
                    "Play",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
            ),
          ),
          Card(
            elevation: 3.0,
            child: ListTile(
              title: Text(
                "RoundRobin Algorithm",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              subtitle: Text("Subject-OS"),
              leading: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: Text("3")),
              trailing: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade900,
                  ),
                  onPressed: () {
                    setState(() {
                      launch("https://youtu.be/TxjIlNYRZ5M");
                    });
                  },
                  child: Text(
                    "Play",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
            ),
          )
        ]))
      ]),
    );
  }
}
