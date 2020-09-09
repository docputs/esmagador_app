import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/arrow-left.svg',
            width: getProportionateScreenWidth(36),
            height: getProportionateScreenHeight(36),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Body(),
    );
  }
}
