import 'package:flutter/material.dart';
import 'package:flutter_desktop_ui_design/dialogboxlistview/list_details.dart';
import 'package:flutter_desktop_ui_design/dialogboxlistview/my_model.dart';

class ListItemRow extends StatefulWidget {

  final Model model;
  ListItemRow(this.model);


  @override
  _ListItemRowState createState() => _ListItemRowState();
}

class _ListItemRowState extends State<ListItemRow> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ListItemDetails(widget.model.id)
        ));

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('${widget.model.id}',style: TextStyle(color: Colors.blue,fontSize: 20),),
          Text('${widget.model.name}',style: TextStyle(color: Colors.blue,fontSize: 20),),
          Text('${widget.model.address}',style: TextStyle(color: Colors.blue,fontSize: 20),),


        ],
      ),
    );
  }
}
