import 'package:csit4thsemnotes/Oschap.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Osdisplay extends StatefulWidget {
  const Osdisplay({super.key,required this.value});
  final PassingOs value;

  @override
  State<Osdisplay> createState() => _OsdisplayState();
}

class _OsdisplayState extends State<Osdisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SfPdfViewer.asset(widget.value.ospdf),

    );
  }
}