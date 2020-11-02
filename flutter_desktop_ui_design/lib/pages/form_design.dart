import 'package:flutter/material.dart';

class FormDesignOne extends StatefulWidget {
  @override
  _FormDesignOneState createState() => _FormDesignOneState();
}

class _FormDesignOneState extends State<FormDesignOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
        title: Text('Form Design'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              // Row 1 Receive Form & Feceive By
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
                              Text('Received Form',style: TextStyle(fontSize: 16),)
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
                          SizedBox(width: 2,),
                          Expanded(
                            flex: 3,
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
                  SizedBox(width: 10,),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child:
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('Received By',style: TextStyle(fontSize: 16,),textAlign: TextAlign.right,),
                              )
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
                          SizedBox(width: 2,),
                          Expanded(
                            flex: 3,
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

              // Row 2 Invoice & Credit

              SizedBox(height: 10,),

              Row(
                children: [
                  // row 2 er invoice part | 1st part
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child:
                                    Text('Invoice No',style: TextStyle(fontSize: 16),textAlign: TextAlign.right,)
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  flex: 2,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'invoice no',
                                      border: OutlineInputBorder(),
                                      isDense: true, // this field are customize height in a field
                                      contentPadding: EdgeInsets.all(8),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child:
                                    Text('Invoice Date',style: TextStyle(fontSize: 16),textAlign: TextAlign.right,)
                                ),
                                SizedBox(width: 5,),
                                Expanded(
                                  flex: 2,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'invoice date',
                                      border: OutlineInputBorder(),
                                      isDense: true, // this field are customize height in a field
                                      contentPadding: EdgeInsets.all(8),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(width: 2,),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),

                  // row 2 er credit part | 2nd part
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Text('Credit Days',style: TextStyle(fontSize: 14),),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                labelText: 'credit days',
                                                border: OutlineInputBorder(),
                                                isDense: true,
                                                contentPadding: EdgeInsets.all(8),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text('Payment Date',style: TextStyle(fontSize: 14),textAlign: TextAlign.right,),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                labelText: 'Payment date',
                                                border: OutlineInputBorder(),
                                                isDense: true,
                                                contentPadding: EdgeInsets.all(8),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('Status',style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                labelText: 'status',
                                                border: OutlineInputBorder(),
                                                isDense: true,
                                                contentPadding: EdgeInsets.all(8),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ],

                              )
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),


              // Row 3
              SizedBox(height: 10,),

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
                              child:
                              Text('%',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)
                          ),
                          Expanded(
                            flex: 4,
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
                  SizedBox(width: 10,),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child:
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('No',style: TextStyle(fontSize: 16,)),
                              )
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
                          SizedBox(width: 2,),
                          Expanded(
                              flex: 1,
                              child:
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('Receive Date',style: TextStyle(fontSize: 16,),textAlign: TextAlign.right,),
                              )
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

                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
