void main() {
  int num1 = 10;
  double num2 = 3.141592;
  print('num1 to str is $num1');
  print('num2 to str is ${num2.toStringAsFixed(2)}');

  num1 = int.parse('-12');
  num2 = double.parse('123.4567');
  num num3 = num.parse('-34.56');
  print(num1);
  print(num2);
  print(num3);
}