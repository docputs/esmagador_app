import 'package:flutter/cupertino.dart';

class IOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Esmagador',
      home: CupertinoPageScaffold(
        child: Center(
          child: Text('IOS App'),
        ),
      ),
    );
  }
}
