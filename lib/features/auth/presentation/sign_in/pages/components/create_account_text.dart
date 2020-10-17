import 'package:auto_route/auto_route.dart';
import 'package:esmagador/features/auth/presentation/sign_up/pages/sign_up_screen.dart';
import 'package:esmagador/routes/router.gr.dart';
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
        ExtendedNavigator.of(context).replace(Routes.signUpPage);
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
