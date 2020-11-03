import 'package:flutter/material.dart';

class ExpandableListview extends StatefulWidget {
  @override
  _ExpandableListviewState createState() => _ExpandableListviewState();
}

class _ExpandableListviewState extends State<ExpandableListview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expandable Listview'),
      ),
      body: ListView.builder(
        itemCount: data.length(),
        itemBuilder: (context,index) => EntryItem(data[index]),
      ),
    );
  }
}



class Entry{
  final String title;
  final List<Entry> children;

  Entry(this.title, [this.children = const <Entry>[]]);

}



final List<Entry> data = <Entry>[
  Entry(
      'Section A',
      <Entry> [
          Entry('Sub Section of A-1',
            <Entry>[
              Entry('Item A-1'),
              Entry('Item A-2'),
              Entry('Item A-3'),
            ]

          ),
        Entry('Sub Section of A-2'),
        Entry('Sub Section of A-3'),


      ],


  ),

  Entry(
      'Section B',
        <Entry>[
          Entry('Sub Section B-1'),
          Entry('Sub Section B-2'),
        ]

  ),


  Entry(
    'Section C',
    <Entry>[
      Entry('sub section c 0'),
      Entry('sub section c 1'),
      Entry('sub section c 2',
        <Entry> [
            Entry('child sub section c-2-1'),
            Entry('child sub section c-2-2'),
            Entry('child sub section c-2-3'),
        ]
      ),

    ]
  )

];





