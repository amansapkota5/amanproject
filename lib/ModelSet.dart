import 'package:csit4thsemnotes/Dbmsmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class Passingdata {
  final String description;
  final String title;

  Passingdata(this.description, this.title);
}

class ModelSet extends StatefulWidget {
  const ModelSet({super.key});
  @override
  State<ModelSet> createState() => _ModelSetState();
}

class _ModelSetState extends State<ModelSet> {
  static List<dynamic> assetsdata = [
    "assets/dbmsquestionbank.pdf",
    "assets/aiquestionbank.pdf",
    "assets/cnquestionbank.pdf",
    "assets/osquestionbank.pdf",
    "assets/tocquestionbank.pdf",
  ];
  static List<dynamic> subjects = [
    "Database Management Systems",
    "Artificial Intelligence",
    "Computer Network",
    "Operating System",
    "Theory of Computations"
  ];

  final List<Passingdata> verdict = List.generate(assetsdata.length,
      (index) => Passingdata(assetsdata[index], subjects[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: GradientAppBar(
          centerTitle: true,
          gradient: LinearGradient(
              colors: [Colors.blue.shade900, Colors.blue.shade900]),
          title: Text(
            "Model Set Questions ",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
          ),
        ),
        body: ListView.builder(
            itemCount: assetsdata.length,
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
                                    Dbmsmodel(data: verdict[index])));
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 45,
                      child: Center(
                          child: Text(
                        verdict[index].title,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.blue.shade900,
                          Colors.blue.shade900
                        ]),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
