import 'package:flutter/material.dart';

import 'components/body.dart';

class WalkthroughScreen extends StatelessWidget {
  static const routeName = '/walkthrough';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
