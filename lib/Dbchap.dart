import 'package:csit4thsemnotes/Dbdisplay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class Passingdb {
  String dbsubjects;
  String dbpdf;
  Passingdb(this.dbsubjects, this.dbpdf);
}

class Dbchap extends StatefulWidget {
  const Dbchap({super.key});

  @override
  State<Dbchap> createState() => _DbchapState();
}

class _DbchapState extends State<Dbchap> {
  static List dbchapters = [
    "Database and Database Users",
    "Database System Concepts and Architecture",
    "Data Modeling Using ER Model",
    "The Relational Data Model and Relational Database Constraints",
    "Relational Algebar and Relational Calculus",
    "SQL",
    "Relational Database Design",
    "Introduction to Transaction Processing Concepts and Theory",
    "Concurrency Control Techniques",
    "Database Recovery Techniques"
  ];
  static List<dynamic> dbdescriptions = [
    "assets/Dbunit1.pdf",
    "assets/Dbunit2.pdf",
    "assets/Dbunit3.pdf",
    "assets/Dbunit4.pdf",
    "assets/Dbunit5.pdf",
    "assets/Dbunit6.pdf",
    "assets/Dbunit7.pdf",
    "assets/Dbunit8.pdf",
    "assets/Dbunit9.pdf",
    "assets/Dbunit10.pdf",
  ];
  var topic = List.generate(dbchapters.length,
      (index) => Passingdb(dbchapters[index], dbdescriptions[index]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GradientAppBar(
          centerTitle: true,
          gradient: LinearGradient(colors: [Colors.black, Colors.black]),
          title: Text(
            "DBMS CHAPTERS ",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
          ),
        ),
        body: ListView.builder(
            itemCount: dbchapters.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Dbdisplay(value: topic[index])));
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 45,
                      child: Center(
                          child: Text(
                        topic[index].dbsubjects,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black, Colors.black]),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
