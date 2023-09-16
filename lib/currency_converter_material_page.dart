import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0, //thickness
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(60),
      ),
    );

    return Scaffold(
      //Can also use Colors.<color_name>
      // backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in INR",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("Button Clicked");
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Convert"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
