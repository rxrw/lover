import 'package:flutter/cupertino.dart';

class Log extends StatelessWidget {
  const Log({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('Log'),
      ),
    );
  }
}
