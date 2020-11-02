import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:flutter/material.dart';

class MyLocalStorage extends StatefulWidget {
  @override
  _MyLocalStorageState createState() => _MyLocalStorageState();
}

class _MyLocalStorageState extends State<MyLocalStorage> {
  final _sharedPrefController = TextEditingController();

  LocalStorageInterface _localStorage;
  String _prefStatus = '';

  void _initLocalStorage() async {
    _localStorage = await LocalStorage.getInstance();
  }

  @override
  void initState() {
    super.initState();
    _initLocalStorage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Storage Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: TextField(
                controller: _sharedPrefController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type something to store...',
                ),
              ),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () async {
                final result = await _localStorage.setString(
                    'value', _sharedPrefController.text);
                setState(() => _prefStatus = result
                    ? 'Successfuly added to the Shared Prefs'
                    : 'Error occured while adding to the Shared Prefs');
              },
              child: Text('Add to shared prefs'),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {
                final result = _localStorage.getString('value');
                setState(() =>
                _prefStatus = 'Retreived value from Shared Prefs: $result');
              },
              child: Text('Get from shared prefs'),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {
                _localStorage.clear();
                setState(() => _prefStatus = 'Cleared Shared Prefs');
              },
              child: Text('Clear shared prefs'),
            ),
          ),
          Center(child: Text(_prefStatus)),
        ],
      ),
    );
  }
}
