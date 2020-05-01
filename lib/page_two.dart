// Flutter code sample for TextField

// This sample shows how to get a value from a TextField via the [onSubmitted]
// callback.

import 'package:flutter/material.dart';

void main() => runApp(PageTwo());

/// This Widget is the main application widget.
class PageTwo extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Calculadora desconto INSS'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 50),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Digite o valor do seu salário aqui.'),
            style: TextStyle(fontStyle: FontStyle.italic),
            controller: _controller,
            onSubmitted: (String value) async {
              await showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  String result;
                  if (int.parse(value) <= 1045) {
                    result = "Sua aliquota é de 7,5% = " +
                        (int.parse(value) * 0.075).toString();
                  } else if (int.parse(value) >= 1045.01 &&
                      int.parse(value) <= 2089.60) {
                    result = "Sua aliquiota é de 9% = " +
                        (int.parse(value) * 0.9 - 15.67).toString();
                  } else if (int.parse(value) >= 2089.61 &&
                      int.parse(value) <= 3134.40) {
                    result = "Sua aliquiota é de 12% = " +
                        (int.parse(value) * 0.12 - 78.36).toString();
                  } else if (int.parse(value) >= 3134.41 &&
                      int.parse(value) <= 6101.06) {
                    result = "Sua aliquota é de 14% = " +
                        (int.parse(value) * 0.14 - 141.05).toString();
                  } else {
                    result = "Valor do seu desconto é 713,10 " +
                        (int.parse(value) - 713.10).toString();
                  }
                  return AlertDialog(
                    title: const Text("O desconto do seu INSS será: "),
                    content: Text("$result"),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
