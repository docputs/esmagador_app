import 'package:esmagador/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'login_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  'Entrar',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Image.asset(
                  'assets/images/Ativo6.png',
                  height: getProportionateScreenHeight(150),
                ),
                SizedBox(height: 30),
                LoginForm(),
                buildCreateAccountText(),
                SizedBox(height: 20),
                buildCustomDivider(),
                SizedBox(height: 20),
                OutlineButton(
                  highlightedBorderColor: kPrimaryColor,
                  textColor: kPrimaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  borderSide: BorderSide(color: kPrimaryColor),
                  child: Text(
                    'Entrar com o Google',
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row buildCustomDivider() {
    final Expanded container = Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 1,
        color: Colors.grey[400],
      ),
    );

    return Row(
      children: [
        Spacer(),
        container,
        Text('OU', style: TextStyle(color: Colors.grey[400])),
        container,
        Spacer(),
      ],
    );
  }

  RichText buildCreateAccountText() {
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
          ),
        ],
      ),
    );
  }
}
