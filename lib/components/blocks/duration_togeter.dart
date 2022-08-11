import 'package:flutter/cupertino.dart';
import 'package:sprintf/sprintf.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DurationTogether extends StatelessWidget {
  final int days;

  const DurationTogether({Key? key, required this.days}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(sprintf(
            AppLocalizations.of(context)!.weHaveBeenTogetherDays, [days])),
      ),
    );
  }
}
