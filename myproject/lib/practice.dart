// import 'package:flutter/cupertino.dart';

// class Car {
//   String? body;
//   String? wheel;
//   String? brand;
//   bool doesHonk = true;
//
//   Car(this.body, this.wheel, this.brand, this.doesHonk);
//
//   void details() {
//     String honkStatus = doesHonk ? "honks" : "doesn't honk";
//     debugPrint("This car $honkStatus and this car have $wheel wheels");
//   }
//
//   String? bbrand() {
//     return brand;
//   }
// }

void main() {
  //stdout.write("Enter your name: ");
  // var namee = stdin.readLineSync();
  // print("Your name is: $namee");
  // var car1 = Car("Metal", "4", "Tesla", false);
  // debugPrint("Brand of car1 is: ${car1.bbrand()}");
  // car1.details();

  // const name = [
  //   'nahin',
  //   'faisal',
  //   'riaz',
  //   'topu',
  // ];

  // try {
  //   name[2] = 'jawad';
  //   print(name[2]);
  // }
  // catch (Exception) {
  //   print(Exception);
  // }

  UserInformation info = UserInformation(name: "Nahin", income: 100000, id: 189023);
  

}

class UserInformation {
  int id;
  String name;
  int income;

  UserInformation({
    required this.id,
    required this.name,
    required this.income,
  });


}
