import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'components/body.dart';

class WalkthroughScreen extends StatelessWidget {
  static const routeName = '/walkthrough';
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
