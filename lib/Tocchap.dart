import 'package:csit4thsemnotes/Tocdescriptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class PassingToc {
  String subjects;
  String tocpdf;
  PassingToc(this.subjects, this.tocpdf);
}

class Tocchap extends StatefulWidget {
  const Tocchap({super.key});

  @override
  State<Tocchap> createState() => _TocchapState();
}

class _TocchapState extends State<Tocchap> {
  static List<dynamic> tocchapters = [
    "Basic Foundations",
    "Introduction to Finite Automata",
    "Regular Expressions",
    "Context Free Grammar",
    "Push Down Automata",
    "Turing Machine",
    "Undecidability and Interactibility"
  ];
  static List<dynamic> tocdescriptions = [
    "assets/Tocunit1.pdf",
    "assets/Tocunit2.pdf",
    "assets/Tocunit3.pdf",
    "assets/Tocunit4.pdf",
    "assets/Tocunit5.pdf",
    "assets/Tocunit6.pdf",
    "assets/Tocunit7.pdf",
  ];
  var topic = List.generate(tocchapters.length,
      (index) => PassingToc(tocchapters[index], tocdescriptions[index]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GradientAppBar(
          centerTitle: true,
          gradient: LinearGradient(colors: [Colors.red, Colors.red]),
          title: Text(
            "Theory of Computation Chapters ",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
          ),
        ),
        body: ListView.builder(
            itemCount: tocchapters.length,
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
                                    Tocchap1(value: topic[index])));
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 45,
                      child: Center(
                          child: Text(
                        topic[index].subjects,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                      decoration: BoxDecoration(
                        gradient:
                            LinearGradient(colors: [Colors.red, Colors.red]),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
