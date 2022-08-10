import 'package:flutter/cupertino.dart';

class DurationCombie extends StatefulWidget {
  const DurationCombie({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DurationCombieState();
}

class _DurationCombieState extends State<DurationCombie> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text('DurationCombie'),
      ),
    );
  }
}
