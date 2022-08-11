import 'package:flutter/cupertino.dart';
import 'package:lover/index.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: AppLocalizations.of(context)!.appName,
      theme: const CupertinoThemeData(
        primaryColor: CupertinoColors.systemGreen,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const IndexPage(),
    );
  }
}
