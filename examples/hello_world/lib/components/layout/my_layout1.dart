import 'package:flutter/material.dart';

export 'my_layout1.dart';

class MyLayout1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Hello World'),
        ],
      ),
    );
}
}

