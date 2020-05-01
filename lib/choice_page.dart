import 'package:flutter/material.dart';
import 'package:flutterapp1/page_one.dart';
import 'page_two.dart';

class ChoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculaora de IR e Desconto em Folha"),
        ),
        backgroundColor: Colors.black12,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageOne()));
                },
                child: Text("Calculadora IR"),
              ),
              RaisedButton(
                  child: Text("Calculadora Salario"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageTwo()));
                  })
            ],
          ),
        ));
  }
}
