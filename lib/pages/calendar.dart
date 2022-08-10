// a stateless widget called calendar
import 'package:flutter/cupertino.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Center(
          child: Text('Calendar'),
        ),
      ),
    );
  }
}
