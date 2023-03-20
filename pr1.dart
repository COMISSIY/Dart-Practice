import 'dart:math' show pow, pi, atan;

class RightTriangle{
  double leg1 = 0; //Катет 1
  double leg2 = 0; //Катет 2
  RightTriangle(this.leg1, this.leg2);
  double getPerimteter(){
    return pow(pow(leg1, 2)+pow(leg2, 2), 0.5) + leg1 + leg2;
  }
  List<double> getAngles(){
    double a = atan(leg1/leg2)*(180/pi);
    return [90, a, 90-a];
  }
  double getOutterRadius(){
    return pow(pow(leg1, 2)+pow(leg2, 2), 0.5)/2;
  }
  void increaseLegs({double leg1=0, double leg2=0}){
    this.leg1 *= (1+leg1/100);
    this.leg2 *= (1+leg2/100);
  }
  void decreaseLegs({double leg1=0, double leg2=0}){
    this.leg1 *= (1-leg1/100);
    this.leg2 *= (1-leg2/100);
  }
}

void main() {
  RightTriangle triangle = RightTriangle(10, 10);
  print("Катет1 = ${triangle.leg1}, Катет2 = ${triangle.leg2}");
  print(triangle.getPerimteter());
  print(triangle.getAngles());
  print(triangle.getRadius());
  triangle.increaseLegs(leg1:10, leg2:10);
  triangle.decreaseLegs(leg1:10, leg2:10); //значение не вернется к изначальному, т.к. математика
}
