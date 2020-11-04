import 'package:flutter/material.dart';
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
    return ListTile(
      title: Text(widget.model.name),
      subtitle: Text(widget.model.address),
    );
  }
}
