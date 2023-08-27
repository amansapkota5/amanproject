import 'package:csit4thsemnotes/CNdisplay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class PassingCn {
  String cnsubjects;
  String cnpdf;
  PassingCn(this.cnsubjects, this.cnpdf);
}

class Cnchap extends StatefulWidget {
  const Cnchap({super.key});

  @override
  State<Cnchap> createState() => _CnchapState();
}

class _CnchapState extends State<Cnchap> {
  static List cnchapters = [
    "Introduction to Computer Networks",
    "Physical Layer and Network Media",
    "Data Link Layer",
    "Network Layer",
    "Transport Layer",
    "Application Layer",
    "Multimedia and Future Networking",
  ];
  static List<dynamic> cndescriptions = [
    "assets/CNunit1.pdf",
    "assets/CNunit2.pdf",
    "assets/CNunit3.pdf",
    "assets/CNunit4.pdf",
    "assets/CNunit5.pdf",
    "assets/CNunit6.pdf",
    "assets/CNunit7.pdf",
  ];
  var topic = List.generate(cnchapters.length,
      (index) => PassingCn(cnchapters[index], cndescriptions[index]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GradientAppBar(
          centerTitle: true,
          gradient: LinearGradient(colors: [Colors.green, Colors.green]),
          title: Text(
            "Comuter Network Chapters ",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          ),
        ),
        body: ListView.builder(
            itemCount: cnchapters.length,
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
                                    CNdisplay(value: topic[index])));
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 45,
                      child: Center(
                          child: Text(
                        topic[index].cnsubjects,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.green, Colors.green]),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
