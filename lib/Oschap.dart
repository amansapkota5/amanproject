import 'package:csit4thsemnotes/Osdisplay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class PassingOs {
  String ossubjects;
  String ospdf;
  PassingOs(this.ossubjects, this.ospdf);
}

class Oschap extends StatefulWidget {
  const Oschap({super.key});

  @override
  State<Oschap> createState() => _OschapState();
}

class _OschapState extends State<Oschap> {
  static List oschapters = [
    "OS Overview",
    "Process Management",
    "Process Deadlocks",
    "Memory Management",
    "File Management",
    "Device Management",
    "Linux Case Study"
  ];
  static List<dynamic> osdescriptions = [
    "assets/OSunit1.pdf",
    "assets/Osunit2.pdf",
    "assets/Osunit3.pdf",
    "assets/Osunit4.pdf",
    "assets/Osunit5.pdf",
    "assets/Osunit6.pdf",
    "assets/Osunit7.pdf",
  ];
  var topic = List.generate(oschapters.length,
      (index) => PassingOs(oschapters[index], osdescriptions[index]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GradientAppBar(
          centerTitle: true,
          gradient: LinearGradient(colors: [Colors.purple, Colors.purple]),
          title: Text(
            "Operating System Chapters ",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          ),
        ),
        body: ListView.builder(
            itemCount: oschapters.length,
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
                                    Osdisplay(value: topic[index])));
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 45,
                      child: Center(
                          child: Text(
                        topic[index].ossubjects,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.purple, Colors.purple]),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
