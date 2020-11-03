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
        itemCount: data.length,
        itemBuilder: (context,index) => EntryItems(data[index]),
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
      'Animal',
      <Entry> [
          Entry('Cow',
            <Entry>[
              Entry('Deshi Cow'),
              Entry('Australian Cow'),
              Entry('Denmark Cow'),
            ]

          ),
        Entry('Horse'),
        Entry('Cats'),


      ],


  ),

  Entry(
      'Flowers',
        <Entry>[
          Entry('Rose'),
          Entry('Lili'),
          Entry('Tulip'),
        ]

  ),


  Entry(
    'Birds',
    <Entry>[
      Entry('Doyel'),
      Entry('Moyna'),
      Entry('Love Birds',
        <Entry> [
            Entry('budgerian'),
            Entry('kaktaroa'),
            Entry('hojoborolo'),
        ]
      ),

    ]
  )

];



class EntryItems extends StatelessWidget {

  final Entry entry;
  const EntryItems(this.entry);


  Widget _buildTiles(Entry root){
    if(root.children.isEmpty){
      return ListTile(
        title: Text(root.title),
      );
    }

    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );

  }


  @override
  Widget build(BuildContext context) {
    return _buildTiles(
      entry,
    );
  }
}


