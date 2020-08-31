import 'package:flutter/material.dart';

import './walkthrough_content.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../login/login_screen.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var _selectedPage = 0;

  final _walkthroughData = [
    {
      'text': 'Monte seu treino e acompanhe seus resultados',
      'imageAsset': 'assets/images/Ativo2.png',
    },
    {
      'text': 'Controle suas cargas e seu volume de treino',
      'imageAsset': 'assets/images/Ativo1.png',
    },
    {
      'text': 'Descubra novos exercícios, vídeos e muito mais!',
      'imageAsset': 'assets/images/Ativo11.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Text('Bem-vindo',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontWeight: FontWeight.bold)),
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  _selectedPage = value;
                });
              },
              itemCount: 3,
              itemBuilder: (context, index) => WalkthroughContent(
                text: _walkthroughData[index]['text'],
                imageAsset: _walkthroughData[index]['imageAsset'],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => buildDot(index),
                  ),
                ),
                Spacer(flex: 3),
                SizedBox(
                  height: getProportionateScreenHeight(60),
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
                    color: kPrimaryColor,
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginScreen.routeName);
                    },
                    child: Text(
                      'Continuar',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 10,
      width: _selectedPage == index ? 30 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: _selectedPage == index ? kPrimaryColor : Colors.grey[300],
      ),
    );
  }
}
