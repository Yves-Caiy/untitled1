void main() {
  int num1 = 10;
  double pi = 3.14;
  double num3 = num1 * pi;
  num num4 = num1 * pi;
  print(num3);
  print(num4);

  String firstname = "Yao";
  String sirname = "Lei";
  String fullname = "$sirname $firstname";
  print("hello, $firstname");
  print("$fullname : ${fullname.length}");

  bool aa = false;
  bool bb = num1 > 0;
  bool chk = aa && bb;
  print("check result is $chk");
}