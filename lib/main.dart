import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//final vs const

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double bmi = 0;
  double valueHeight = 182.0;
  double valueWeight = 76.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff2b2d42),
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontFamily: 'Poppins-Regular',
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/image_bmi.png',
              height: 150.0,
            ),
            const Text(
              "Height",
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 16.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  // valueSlider.toInt().toString(),
                  valueHeight.toStringAsFixed(0),
                  style: const TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Poppins-Regular',
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                const Text("cm"),
              ],
            ),
            Slider(
              value: valueHeight,
              min: 100.0,
              max: 200.0,
              activeColor: Colors.pinkAccent,
              // label: valueSlider.toInt().toString(),
              // divisions: 10,
              onChanged: (double mandarina) {
                valueHeight = mandarina;
                setState(() {});
              },
            ),
            const Text(
              "Weight",
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 16.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  // valueSlider.toInt().toString(),
                  valueWeight.toStringAsFixed(0),
                  style: const TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Poppins-Regular',
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                const Text("kg"),
              ],
            ),
            Slider(
              value: valueWeight,
              min: 10.0,
              max: 150.0,
              activeColor: Colors.pinkAccent,
              // label: valueSlider.toInt().toString(),
              // divisions: 10,
              onChanged: (double mandarina) {
                valueWeight = mandarina;
                setState(() {});
              },
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  bmi = valueWeight / pow((valueHeight / 100), 2);
                  setState(() {});
                },
                child: const Text(
                  "Calculate",
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: Card(
                child: Column(
                  children: [
                    Text(
                      "Resultado:",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Poppins-Regular',
                      ),
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins-Regular',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
