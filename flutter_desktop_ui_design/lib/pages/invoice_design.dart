import 'package:flutter/material.dart';

class InvoiceFormDesign extends StatefulWidget {
  @override
  _InvoiceFormDesignState createState() => _InvoiceFormDesignState();
}

class _InvoiceFormDesignState extends State<InvoiceFormDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice Page'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
