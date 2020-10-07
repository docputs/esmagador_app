import 'package:flutter/material.dart';

import '../../../../core/size_config.dart';

class WalkthroughContent extends StatelessWidget {
  const WalkthroughContent({
    Key key,
    this.text,
    this.imageAsset,
  }) : super(key: key);

  final String text;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(300),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        Container(
          child: Image.asset(
            imageAsset,
            height: getProportionateScreenHeight(260),
          ),
        ),
      ],
    );
  }
}
