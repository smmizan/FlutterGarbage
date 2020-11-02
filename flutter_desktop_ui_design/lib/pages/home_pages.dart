import 'package:flutter/material.dart';
import 'package:flutter_desktop_ui_design/pages/form_design.dart';
import 'package:flutter_desktop_ui_design/pages/invoice_design.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Pages'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [

            ],
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ),  
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
              onTap: (){

              },
            ),


            ListTile(
              leading: Icon(Icons.format_align_left_rounded),
              title: Text('Receive Form Design'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => FormDesignOne(),
                ));
              },
            ),


            ListTile(
              leading: Icon(Icons.format_align_left_rounded),
              title: Text('Invoice Form Design'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => InvoiceFormDesign(),
                ));
              },
            ),

          ],
        ),
      ),



    );
  }
}