import 'package:flutter/cupertino.dart';
import 'package:lover/components/blocks/duration_togeter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(children: const [
        DurationTogether(days: 12),
      ]),
    );
  }
}
