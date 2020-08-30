import 'package:esmagador/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './components/body.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

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
