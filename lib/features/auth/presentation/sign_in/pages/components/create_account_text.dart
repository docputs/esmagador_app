import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants.dart';


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
        // Navigator.of(context).pushReplacementNamed(SignUpScreen.routeName);
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
