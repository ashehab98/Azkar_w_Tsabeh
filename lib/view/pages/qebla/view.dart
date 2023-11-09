import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:seb7a/core/design/appbar.dart';
import 'package:seb7a/view/pages/qebla/loading_indecator.dart';
import 'package:seb7a/view/pages/qebla/qiblah_compass.dart';
import 'package:seb7a/view/pages/qebla/qiblah_maps.dart';

class QeblaView extends StatefulWidget {
  @override
  _QeblaViewState createState() => _QeblaViewState();
}

class _QeblaViewState extends State<QeblaView> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo.withOpacity(.411),
      appBar: MainAppBar(text: "إتجاة القبلة"),
      body: FutureBuilder(
        future: _deviceSupport,
        builder: (_, AsyncSnapshot<bool?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return LoadingIndicator();
          if (snapshot.hasError)
            return Center(
              child: Text("Error: ${snapshot.error.toString()}"),
            );

          if (snapshot.data!)
            return QiblahCompass();
          else
            return QiblahMaps();
        },
      ),
    );
  }
}
