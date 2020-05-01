import 'package:flutter/material.dart';
import 'package:flutterapp1/choice_page.dart';

import 'page_one.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: ChoicePage(),
    );
  }
}
