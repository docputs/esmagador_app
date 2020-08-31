import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../../sign_up/sign_up_screen.dart';
import '../../../../constants.dart';

class CreateAccountText extends StatefulWidget {
  const CreateAccountText({
    Key key,
  }) : super(key: key);

  @override
  _CreateAccountTextState createState() => _CreateAccountTextState();
}

class _CreateAccountTextState extends State<CreateAccountText> {
  TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.of(context).popAndPushNamed(SignUpScreen.routeName);
      };
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Não tem uma conta? ',
            style: TextStyle(color: kTextColor),
          ),
          TextSpan(
            text: 'Crie uma.',
            style: TextStyle(color: kPrimaryColor),
            recognizer: _tapGestureRecognizer,
          ),
        ],
      ),
    );
  }
}
