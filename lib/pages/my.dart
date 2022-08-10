import 'package:flutter/cupertino.dart';

class My extends StatelessWidget {
  const My({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('My'),
      ),
    );
  }
}
