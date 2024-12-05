import 'dart:io';

// void main(){
//   var input=stdin.readLineSync()!;
//   if(input=='31231'){
//     print('Banana');
//   }
//   else if(input=='43861'){
//     print('Elderberry');
//   }else if(input=='82678'){
//     print('Honeydew Melon');
//   }else if(input=='23456'){
//     print('Apple');
//   }else if(input=='78901'){
//     print("Mango");
//   }else if(input=='98765'){
//     print('Nectarine');
//   }else if(input=='45678'){
//     print('Orange');
//   }else if(input=='67890'){
//     print('Raspberry');
//   }else if(input=='21098'){
//     print('Tangerine');
//   }
//   else{
//
//   }
//
//
//
//   }

// void main() {
//   double n = 3.14159;
//   double R = double.parse(stdin.readLineSync()!);
//   double A = n * R * R;
//   print('A=${A.toStringAsFixed(4)}');
// }
void main() {
  List<int> values = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int weight = values[0];
  int sugar = values[1];
  int calories = values[2];
  if(weight >=200 && weight <= 300 && sugar >= 50 && calories >= 150){
    print('Yes');
  }else{
    print('No');
  }}