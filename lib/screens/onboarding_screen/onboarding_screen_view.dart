import 'package:flukey_hackathon/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreenView extends StatefulWidget {
  @override
  _OnboardingScreenViewState createState() => _OnboardingScreenViewState();
}

class _OnboardingScreenViewState extends State<OnboardingScreenView> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      //TODO burdan giriş sayfasına gidecek
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.network('http://pngimg.com/uploads/cat/cat_PNG50497.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 16.0, color: Colors.black);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          titleWidget: Text(
            'Yazilar1',
            style: TextStyle(color: Colors.black, fontSize: 32),
            textAlign: TextAlign.center,
          ),
          body: 'Aciklama 1',
          image: _buildImage('mining'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Text(
            'Yazilar2',
            style: TextStyle(color: Colors.black, fontSize: 32),
            textAlign: TextAlign.center,
          ),
          body: 'Aciklama 2',
          image: _buildImage('digital_currency'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
        _onIntroEnd(context);
      },
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text(
        'Skip',
        style: TextStyle(color: Colors.black),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.black,
      ),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
