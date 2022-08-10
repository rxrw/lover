import 'package:flutter/cupertino.dart';

class IndexBanner extends StatelessWidget {
  const IndexBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text("This will be some pictures"),
      ),
    );
  }
}
