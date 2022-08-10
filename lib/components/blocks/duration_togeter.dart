import 'package:flutter/cupertino.dart';
import 'package:lover/constants/word.dart';
import 'package:sprintf/sprintf.dart';

class DurationTogether extends StatelessWidget {
  final int days;

  const DurationTogether({Key? key, required this.days}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(sprintf(ConstantWord.howLongWeBeTogether, [days])),
      ),
    );
  }
}
