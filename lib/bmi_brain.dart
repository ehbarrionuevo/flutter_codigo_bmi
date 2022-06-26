import 'dart:math';

class BMIBrain {
  double height;
  double weight;

  BMIBrain({
    required this.height, //182
    required this.weight, //76
  });

  //calcularBMI

  double calculateBMI() {
    double bmi = weight / pow((height / 100), 2);
    return bmi;
  }

  //

  //

}
