import 'package:flustars_flutter3/flustars_flutter3.dart';
import 'package:flutter/cupertino.dart';
import 'package:lover/constants/sp.dart';
import 'package:lover/index.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lover/introductions/introduction_animation_screen.dart';
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

  bool _isFirstOpen(BuildContext context) {
    if (SpUtil.getBool(ConstantSp.isFirstOpen, defValue: true)!) {
      SpUtil.putBool(ConstantSp.isFirstOpen, false);
      return true;
    }
    return false;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        theme: const CupertinoThemeData(
          primaryColor: CupertinoColors.systemGreen,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: _isFirstOpen(context) ? '/welcome' : '/',
        routes: {
          '/': (context) => const IndexPage(),
          '/auth': (context) => const Auth(),
          '/welcome': (context) => const IntroductionAnimationScreen(),
          '/setting': (context) => const Setting(),
          '/calendar': (context) => const Calendar(),
        });
  }
}
