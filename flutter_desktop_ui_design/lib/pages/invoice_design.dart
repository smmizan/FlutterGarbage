import 'package:flutter/material.dart';
import 'package:flutter_desktop_ui_design/pages/data_store.dart';

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

              RaisedButton(
                child: Text('Popup Dialog'),
                onPressed: (){
                  showAlertDialog(context);
                },
              )

            ],
          ),
        ),
      ),
    );
  }


  showAlertDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Color List'),
          content: Container(
            width: double.minPositive,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: colorList.length,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text(colorList[index]),
                  onTap: (){
                    Navigator.pop(context,colorList[index]);
                    print('${colorList[index]}');
                  },
                );

              },


            )
          ),
        );
      }
    );
  }

}
