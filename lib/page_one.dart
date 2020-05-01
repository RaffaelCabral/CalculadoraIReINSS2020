import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Calculadora de Imposto de Renda"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 50),
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
                  String percent;
                  if (int.parse(value) <= 1903.98) {
                    result = "Isento";
                  } else if (int.parse(value) >= 1903.99 &&
                      int.parse(value) <= 2826.25) {
                    result = "7.5% ou " +
                        (int.parse(value) * 0.075).toString() +
                        " reais";
                  } else if (int.parse(value) >= 2826.66 &&
                      int.parse(value) <= 3751.05) {
                    result = "15% ou " +
                        (int.parse(value) * 0.15).toString() +
                        " reais";
                  } else if (int.parse(value) >= 3751.06 &&
                      int.parse(value) <= 4664.68) {
                    result = "22.5% ou " +
                        (int.parse(value) * 0.225).toString() +
                        " reais";
                  } else {
                    result = "27.5% ou " +
                        (int.parse(value) * 0.275).toString() +
                        " reais";
                  }

                  return AlertDialog(
                    title: const Text('O valor do seu imposto de renda será:'),
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
