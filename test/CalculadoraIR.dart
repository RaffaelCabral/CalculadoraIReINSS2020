import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
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
      body: Center(
        child: TextField(
          controller: _controller,
          onSubmitted: (String value) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Thanks!'),
                  content: Text('You typed "$value".'),
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
    );
  }
}



if(result <= 1045){
print('Sua aliquita de INSS é 7,5% = ' + (result * 0.075)),
}else if (result >= 1045.01 && result <= 2089.60){
print('Sua aliquita de INSS é 9% = ' + (result * 0.09) - 15.67),
}else if (result >= 2089.61 && <= 3134.40){
print('Sua aliquota de INSS é 12% = ' + (result * 0.12) - 78.36),
}else if(result >= 3134.41 && <= 6101.06){
print ('Sua aliquita de INSS é 14% = ' + (result * 0.14) - 141.05),
}else {
print ('Seu desconto será: 713,10 = ' + (result - 713.10))
};
),
),
);
}
}
