import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';
void main() {
 runApp(MyApp());
}

  class MyApp extends StatefulWidget {
  @override
      State<StatefulWidget> createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
    double input = 0;
    double kelvin = 0;
    double reamur = 0;
    final inputController = TextEditingController();

    void inputRumus(){
       setState(() {
          input = double.parse(inputController.text);
          kelvin = input + 273;
          reamur = (4/5) * input;
        }
      );
    }
    
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
          child: Column(
            children: [
            TextFormField(
              controller: inputController,
                decoration: InputDecoration(
                  hintText: "Masukkan Suhu Dalam Celcius",
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9+\,]'))
                ],
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false
                ),
            ),

            Expanded(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Suhu dalam Kelvin"), 
                      Text("$kelvin"),
                    ],),
                    margin: EdgeInsets.all(8),
                  ),

                  Container(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Suhu dalam Reamur"), 
                      Text("$reamur")
                    ],),
                    margin: EdgeInsets.all(8),
                  ),
                ],
              ) 
            ),
          
            RaisedButton(
              color: Colors.blue,
                onPressed: inputRumus,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Konversi Suhu', style: TextStyle(color: Colors.white ),),
                ],) 
              ),
            ],)
          ),
        ),
      );
    } 
  }


