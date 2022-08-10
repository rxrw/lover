import 'package:flutter/cupertino.dart';
import 'package:lover/constants/name.dart';
import 'package:lover/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: ConstantName.appName,
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.systemGreen,
      ),
      home: IndexPage(),
    );
  }
}
