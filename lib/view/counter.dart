import 'package:flutter/material.dart';

import '../core/logic/cach_helper.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int count = CacheHelper.getCount();
  @override
  void initState() {
    super.initState();
    // CacheHelper.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                count++;
                CacheHelper.setCount(count);
                setState(() {});
              },
              child: Icon(Icons.add),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                count.toString(),
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                if (count > 0) {
                  count--;
                  CacheHelper.setCount(count);
                  setState(() {});
                }
              },
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 30),
            FloatingActionButton(
              onPressed: () {
                count = 0;
                CacheHelper.setCount(count);
                setState(() {});
              },
              child: Text("clear"),
            ),
          ],
        ),
      ),
    );
  }
}
