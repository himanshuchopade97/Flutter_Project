import 'package:flutter_test/flutter_test.dart';
import 'package:ibmi/utils/calculator.dart';

void main() {
  test(
    'Give height and weight When calculateBMI funvtion ivokd, then current The BMI returned',
    () {
       // arrange, act, assert
      const int height = 70, weight = 160;   // arrange section

      double bmi = calculateBMI(height, weight);  //act

      expect(bmi, 22.955102040816328); //assert
    },
  );
}
