import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false
                ),

                // controller: suhuController,
                decoration: InputDecoration(
                  hintText: "Masukkan Suhu Dalam Celcius",
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9+\,]'))
                ],
                
            //     validator: (value){
            //       if(value.isEmpty){
            //         return 'Harus inputkan angka';
            //     }
            //     return null;
            //  },
            ),

            Expanded(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Suhu dalam Kelvin"), Text("150")
                    ],),
                    margin: EdgeInsets.all(8),
                  ),

                  Container(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Suhu dalam Reamur"), Text("150")
                    ],),
                    margin: EdgeInsets.all(8),
                  ),
                ],
              ) 
            ),

            RaisedButton(
            color: Colors.blue,
              onPressed: (){},
              child: Text('Konversi Suhu', style: TextStyle(color: Colors.white),),
            ),
          ],)
        ),
      ),
    );
  }
}

