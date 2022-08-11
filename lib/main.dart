import 'package:flustars_flutter3/flustars_flutter3.dart';
import 'package:flutter/cupertino.dart';
import 'package:lover/index.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lover/pages/auth.dart';
import 'package:lover/pages/calendar.dart';
import 'package:lover/pages/setting.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();

  runApp(const LoverApp());
}

class LoverApp extends StatelessWidget {
  const LoverApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        theme: const CupertinoThemeData(
          primaryColor: CupertinoColors.systemGreen,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routes: {
          // '/': (context) => const IndexPage(),
          '/': (context) => const Auth(),
          '/setting': (context) => const Setting(),
          '/calendar': (context) => const Calendar(),
        });
  }
}
