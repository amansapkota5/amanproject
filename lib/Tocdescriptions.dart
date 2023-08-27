
import 'package:csit4thsemnotes/Tocchap.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Tocchap1 extends StatelessWidget {
  const Tocchap1({super.key,required this.value});
  final PassingToc value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SfPdfViewer.asset(value.tocpdf),

    );
  }
}