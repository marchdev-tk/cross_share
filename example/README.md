# cross_share_example

Demonstrates how to use the cross_share package.

## Usage

```dart
import 'package:flutter/material.dart';

import 'package:cross_share/cross_share.dart';
import 'package:file_selector/file_selector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Storage Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            child: RaisedButton(
              onPressed: () {
                Share().shareUrl(url: 'tel:0001112223');
              },
              child: Text('Make the call'),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () async {
                final file = await FileSelector().pickFile(
                  type: FileType.img,
                );

                if (file == null) return;

                await Share().shareFile(
                  name: file.name,
                  bytes: file.bytes,
                  type: file.type,
                );
              },
              child: Text('Select and Share File'),
            ),
          ),
        ],
      ),
    );
  }
}
```

## Getting Started

For help getting started with Flutter, view 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
