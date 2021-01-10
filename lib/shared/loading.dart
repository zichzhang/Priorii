import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:Priorii/models/global.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: greyBackgroundColor,
      child: Center(
        child: SpinKitPulse(
          color: lilacColor,
          size: 40.0,
        ),
      ),
    );
  }
}