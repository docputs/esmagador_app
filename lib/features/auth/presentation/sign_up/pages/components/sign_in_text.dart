import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../routes/router.gr.dart';

class SignInText extends StatefulWidget {
  const SignInText({
    Key key,
  }) : super(key: key);

  @override
  _SignInTextState createState() => _SignInTextState();
}

class _SignInTextState extends State<SignInText> {
  TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        ExtendedNavigator.of(context).replace(Routes.signInPage);
      };
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Já tem uma conta? ',
            style: TextStyle(color: kTextColor),
          ),
          TextSpan(
            text: 'Faça login.',
            style: TextStyle(color: kPrimaryColor),
            recognizer: _tapGestureRecognizer,
          ),
        ],
      ),
    );
  }
}
