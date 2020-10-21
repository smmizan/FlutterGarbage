import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';

class MyHomePages extends StatefulWidget {
  @override
  _MyHomePagesState createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: ConnectivityBuilder(
              builder: (context,isConnection,status) => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isConnection == true ? Icons.signal_wifi_4_bar : Icons.signal_wifi_off,
                      color: isConnection == true ? Colors.green : Colors.red,
                    size: 40,
                  ),

                  SizedBox(width: 10,),

                  Text('$status', style: TextStyle(fontSize:30, color: status != ConnectivityStatus.none ? Colors.green : Colors.red),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
