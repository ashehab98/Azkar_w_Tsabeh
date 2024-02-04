import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingWidget extends StatelessWidget {
  final double size;

  const LoadingWidget({super.key, this.size = 50});

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