import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../core/constants.dart';

class LoadingWidget extends StatelessWidget {
  final double size;

  LoadingWidget({this.size = 50});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitDoubleBounce(
        // color: PRIMARY_COLOR,
       color: Colors.green,
        size: size,
      ),
    );
  }
}