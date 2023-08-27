import 'package:csit4thsemnotes/Cnchap.dart';
import 'package:csit4thsemnotes/Dbchap.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Dbdisplay extends StatelessWidget {
  const Dbdisplay({super.key,required this.value});
  final Passingdb value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SfPdfViewer.asset(value.dbpdf),

    );
  }
}