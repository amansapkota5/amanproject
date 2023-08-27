import 'package:csit4thsemnotes/ModelSet.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Dbmsmodel extends StatelessWidget {
  const Dbmsmodel({super.key , required this.data});


  final Passingdata data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset(data.description)
    

    );
  }
}