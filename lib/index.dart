import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lover/constants/size.dart';
import 'package:lover/pages/home.dart';
import 'package:lover/pages/log.dart';
import 'package:lover/pages/my.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Log(),
    My(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              CupertinoIcons.home,
              size: ConstantSize.cupertinoIconSize,
            ),
            label: AppLocalizations.of(context)!.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              CupertinoIcons.square_list,
              size: ConstantSize.cupertinoIconSize,
            ),
            label: AppLocalizations.of(context)!.log,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              CupertinoIcons.person_2,
              size: ConstantSize.cupertinoIconSize,
            ),
            label: AppLocalizations.of(context)!.my,
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      tabBuilder: (context, index) => CupertinoTabView(
        builder: (context) => CupertinoPageScaffold(
          // navigationBar: CupertinoNavigationBar(
          //   middle: _widgetOptions.elementAt(index),
          // ),
          child: SafeArea(child: _widgetOptions.elementAt(index)),
        ),
      ),
    );
  }
}
