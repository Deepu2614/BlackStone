import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:hexcolor/hexcolor.dart';
import '../elements/Homepage.dart';
import 'Home.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FCFCFC'),
      body: _buildIntroAnimation(context),
    );
  }

  FutureBuilder<bool> _buildIntroAnimation(BuildContext context) {
    return FutureBuilder<bool>(
      future: _startIntroAnimation(context),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Animation completed, navigate to Home screen
          return Homepage();
        } else {
          // Animation still in progress, show intro animation
          return Center(
            child: Image.asset('assets/introbs.gif'), // Replace with your GIF asset path
          );
        }
      },
    );
  }

  Future<bool> _startIntroAnimation(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3)); // Adjust the duration as needed
    return true;
  }
}
