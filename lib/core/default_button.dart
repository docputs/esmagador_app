import 'package:flutter/material.dart';

import 'constants.dart';
import 'size_config.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    @required this.text,
    @required this.handler,
  });

  final String text;
  final Function handler;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: getProportionateScreenHeight(60),
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
        color: kPrimaryColor,
        onPressed: handler,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
