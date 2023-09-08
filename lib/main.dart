import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}

//const keyword tells that the constructor in MyApp is compile time constant and hence needs to be run only one time, and not everytime when you are called
//Passing the key that is got from the main() and pass it to the super(Stateless Wigdget), which in turn passes to Widget