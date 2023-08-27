import 'package:csit4thsemnotes/Cnchap.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class CNdisplay extends StatelessWidget {
  const CNdisplay({super.key,required this.value});
  final PassingCn value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SfPdfViewer.asset(value.cnpdf),

    );
  }
}