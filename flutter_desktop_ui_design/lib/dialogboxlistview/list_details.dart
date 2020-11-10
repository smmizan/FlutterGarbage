import 'package:flutter/material.dart';
import 'package:flutter_desktop_ui_design/pages/data_store.dart';

class ListItemDetails extends StatefulWidget {

  final int getID;
  ListItemDetails(this.getID);

  @override
  _ListItemDetailsState createState() => _ListItemDetailsState();
}

class _ListItemDetailsState extends State<ListItemDetails> {




  @override
  Widget build(BuildContext context) {

    final data = listData.firstWhere((element) => element.id == widget.getID);
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),

      body: Text('${data.name}',style: TextStyle(color: Colors.cyan,fontSize: 30),),
    );
  }
}
