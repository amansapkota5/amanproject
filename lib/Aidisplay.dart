import 'package:csit4thsemnotes/AIchap.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Aidisplay extends StatefulWidget {
  const Aidisplay({super.key,required this.value});
  final Passingai value;

  @override
  State<Aidisplay> createState() => _AidisplayState();
}

class _AidisplayState extends State<Aidisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SfPdfViewer.asset(widget.value.aipdf),

    );
  }
}