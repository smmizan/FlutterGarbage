import 'package:flutter/material.dart';
import 'package:flutter_desktop_ui_design/dialogboxlistview/my_model.dart';
import 'package:flutter_desktop_ui_design/pages/data_store.dart';
import 'package:flutter_desktop_ui_design/widget/list_item_row.dart';

class DialogBoxListView extends StatefulWidget {
  @override
  _DialogBoxListViewState createState() => _DialogBoxListViewState();
}

class _DialogBoxListViewState extends State<DialogBoxListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Data'),
      ),

      body: ListView(
        children: listData.map((model) => ListItemRow(model)).toList(),
      ),
    );
  }
}
