import 'package:flutter/material.dart';

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
  double valueSlider = 160.0;

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
              height: 180.0,
            ),
            Text(
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
                  valueSlider.toStringAsFixed(0),
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
              value: valueSlider,
              min: 100.0,
              max: 200.0,
              activeColor: Colors.pinkAccent,
              // label: valueSlider.toInt().toString(),
              // divisions: 10,
              onChanged: (double mandarina) {
                valueSlider = mandarina;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
