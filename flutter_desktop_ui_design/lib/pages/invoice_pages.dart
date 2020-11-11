import 'package:flutter/material.dart';
import 'package:flutter_desktop_ui_design/pages/data_store.dart';
import 'package:flutter_desktop_ui_design/widget/list_item_row.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as Http;

class InvoicePages extends StatefulWidget {
  @override
  _FormDesignOneState createState() => _FormDesignOneState();
}

class _FormDesignOneState extends State<InvoicePages> {

  TextEditingController _ctrlInvoiceNo,_ctrlinvoiceDate,_ctrlStatus,_ctrlReceiveById,_ctrlReceiveByName;
  TextEditingController _ctrlDTLproduct_code,_ctrlDTLproduct_quantity;

  var _invoiceNo;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _invoiceNo = DateFormat('yyMMddhhmmss').format(DateTime.now());
    print('${_invoiceNo}');

    _ctrlInvoiceNo = new TextEditingController(text: _invoiceNo);
    _ctrlinvoiceDate = new TextEditingController(text: '${DateFormat('dd-MM-yyyy').format(DateTime.now())}');
    _ctrlStatus = new TextEditingController(text: 'N');
    _ctrlReceiveById = new TextEditingController(text: '00000101');
    _ctrlReceiveByName = new TextEditingController(text: 'Beacon Pharmaceuticals Limited');

    _ctrlDTLproduct_code = new TextEditingController();
    _ctrlDTLproduct_quantity = new TextEditingController();


    print(_ctrlinvoiceDate.text);



  }




  Future<List> masterInsert() async{
    final myUrl =  "http://localhost/Mizan/flutter/pharmacy/master_insert.php";
    var body = {
      "invoice_no":_ctrlInvoiceNo.text,
      "receive_from_id":_ctrlReceiveById.text,
      "invoice_date":_ctrlinvoiceDate.text,
    };
    var mizan = await Http.post(myUrl,body: body);
    print(mizan.body);
    
  }


  Future<List> detailInsert() async{
    final myUrl =  "http://localhost/Mizan/flutter/pharmacy/details_insert.php";
    var body = {
      "invoice_no":_ctrlInvoiceNo.text,
      "product_code":_ctrlDTLproduct_code.text,
      "product_quantiry":_ctrlDTLproduct_quantity.text,
    };
    var mizan = await Http.post(myUrl,body: body);
    print(mizan.body);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
        title: Text('Invoice'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [


              // row 1

              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child:
                              Text('Customer',style: TextStyle(fontSize: 16),)
                          ),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true, // this field are customize height in a field
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true, // this field are customize height in a field
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),


                          Expanded(
                            flex: 3,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true, // this field are customize height in a field
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),


                          Expanded(
                            flex: 1,
                            child: Text('Mobile No',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                          ),

                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10,),


              // row 2


              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child:
                              Text('Doctor',style: TextStyle(fontSize: 16),)
                          ),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true, // this field are customize height in a field
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true, // this field are customize height in a field
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),


                          Expanded(
                            flex: 3,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true, // this field are customize height in a field
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Location',textAlign: TextAlign.right,),
                          ),

                          Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),


                          Expanded(
                            flex: 1,
                            child: Text('Time',style: TextStyle(fontSize: 16),textAlign: TextAlign.right,),
                          ),

                          Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10,),
              // Row 3

              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child:
                              Text('Discount',style: TextStyle(fontSize: 16),)
                          ),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true, // this field are customize height in a field
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('%',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)
                          ),

                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true, // this field are customize height in a field
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true, // this field are customize height in a field
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: Text('Bill No',textAlign: TextAlign.center,),
                          ),

                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: Text('Date',textAlign: TextAlign.center,),
                          ),

                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),


                          Expanded(
                            flex: 1,
                            child: Text('Status',style: TextStyle(fontSize: 16),textAlign: TextAlign.right,),
                          ),

                          Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                FlatButton(
                  child: Text('Master Insert',style: TextStyle(color: Colors.red,fontSize: 20),),
                  onPressed: (){
                    masterInsert();
                    //print('master insert : ${_ctrlInvoiceNo.text},${_ctrlinvoiceDate.text},${_ctrlReceiveById.text}');
                  },
                ),

              ],
            ),

            SizedBox(height: 10,),

            SizedBox(height: 10,),

            Container(
                //color: Colors.black,
                padding: EdgeInsets.all(2.0),
                child: Table(
                  border: TableBorder.all(color: Colors.black12),
                  children: [

                    TableRow(
                        children: [
                          Text('Product Code',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('Product Name',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('Box',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('Type',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('Benifit',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('Invoice',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('Bonus',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('Total Unit',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('MRP',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('TP',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('VAT',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('Buy Price',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('Discount',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          Text('Total Values',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        ]),



                    TableRow(children: [
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),


                    ]),
                    TableRow(children: [
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),


                    ]),
                    TableRow(children: [
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),


                    ]),
                    TableRow(children: [
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),


                    ]),
                    TableRow(children: [
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),


                    ]),
                    TableRow(children: [
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),
                      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), isDense: true, contentPadding: EdgeInsets.all(8),),),


                    ]),


                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }



  showAlertDialog2(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Pharma List'),
            content: Container(
                width: double.minPositive,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: listData.length,
                  itemBuilder: (context,index) => ListItemRow(listData[index]),

                )
            ),
          );
        }
    );
  }



}
