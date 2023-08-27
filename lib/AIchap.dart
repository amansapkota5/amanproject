import 'package:csit4thsemnotes/Aidisplay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class Passingai {
  String aisubjects;
  String aipdf;
  Passingai(this.aisubjects, this.aipdf);
}

class Aichap extends StatefulWidget {
  const Aichap({super.key});

  @override
  State<Aichap> createState() => _AichapState();
}

class _AichapState extends State<Aichap> {
  static List aichapters = [
    "Introduction to AI",
    "Intelligent Agents",
    "Problem Solving by Searching",
    "Knowledge Representation",
    "Machine Learning",
    "Applications of AI"
  ];
  static List<dynamic> aidescriptions = [
    "assets/AIunit1.pdf",
    "assets/AIunit2.pdf",
    "assets/AIunit3.pdf",
    "assets/AIunit4.pdf",
    "assets/AIunit5.pdf",
    "assets/AIunit6.pdf",
  ];
  var topic = List.generate(aichapters.length,
      (index) => Passingai(aichapters[index], aidescriptions[index]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GradientAppBar(
          centerTitle: true,
          gradient: LinearGradient(colors: [Colors.pink, Colors.pink]),
          title: Text(
            "AI CHAPTERS ",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
          ),
        ),
        body: ListView.builder(
            itemCount: aichapters.length,
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
                                    Aidisplay(value: topic[index])));
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 45,
                      child: Center(
                          child: Text(
                        topic[index].aisubjects,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                      decoration: BoxDecoration(
                        gradient:
                            LinearGradient(colors: [Colors.pink, Colors.pink]),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
