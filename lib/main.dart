import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
            margin: EdgeInsets.all(8),
            child: Column(children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(hintText: "Masukkan Suhu Dalam Celsius"),
                onSaved: (String value) {},
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9+\.]'))
                ],
                keyboardType: TextInputType.numberWithOptions(
                    decimal: true, signed: false),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    )
                  ],
                )
              )
              Container(
                padding: EdgeInsets.all(8),
                width: 200,
                height: 180,
                child: RaisedButton(
                    color: Colors.blue[500],
                    child: Text(
                      "Konversi suhu",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ])),
      ),
    );
  }
}
