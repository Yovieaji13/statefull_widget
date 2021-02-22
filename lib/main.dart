import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
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
          child: Column(
            children: [
            TextFormField(
                decoration: new InputDecoration(
                  hintText: "Masukkan Suhu Dalam Celcius",
                ),
                
                validator: (value){
                  if(value.isEmpty){
                    return 'Harus inputkan angka';
                }
                return null;
             },
            ),
          ],)
        ),
      ),
    );
  }
}

