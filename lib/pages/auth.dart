import 'package:flustars_flutter3/flustars_flutter3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  Duration get loginTime => Duration(milliseconds: 1000);

  Future<String?> _authUser(LoginData data) {
    LogUtil.d('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    LogUtil.d('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    LogUtil.d('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'LOVER',
      theme: LoginTheme(footerBackgroundColor: CupertinoColors.activeGreen),
      // logo: AssetImage('assets/images/ecorp-lightblue.png'),
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacementNamed("/");
      },
      messages: LoginMessages(),
      onRecoverPassword: _recoverPassword,
      loginProviders: <LoginProvider>[
        LoginProvider(
          icon: FontAwesomeIcons.weixin,
          label: 'Weixin',
          callback: () async {
            LogUtil.d('start google sign in');
            await Future.delayed(loginTime);
            LogUtil.d('stop google sign in');
            return null;
          },
        ),
      ],
    );
  }
}
