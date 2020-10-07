import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final Widget subtitle;

  const CustomHeader({
    Key key,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: double.infinity, child: subtitle),
      ],
    );
  }
}
