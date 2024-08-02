import 'dart:io';

import 'BankAccount_Encapsulation.dart';
import 'shape_inheritance.dart';

void main() {
  while (true) {
    print("\nChoose an option:");
    print("1. Bank Account");
    print("2. Shape");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        BankAccount account = BankAccount();

        print('Enter amount of deposit: ');
        double depositAmount = double.parse(stdin.readLineSync()!);
        account.deposit(depositAmount);

        print('Enter amount of withdraw: ');
        double withdrawAmount = double.parse(stdin.readLineSync()!);
        account.withdraw(withdrawAmount);
        break;

      case 2:
        while (true) {
          print("\nChoose an option:");
          print("1. Rectangle Area");
          print("2. Triangle Area");

          print("0. Exit");
          int ShapeChoice = int.parse(stdin.readLineSync()!);

          switch (ShapeChoice) {
            case 1:
              print('Enter width of the rectangle: ');
              double width = double.parse(stdin.readLineSync()!);

              print('Enter height of the rectangle: ');
              double height = double.parse(stdin.readLineSync()!);

              Rectangle rect = Rectangle(width, height);
              print('Area of Rectangle: ${rect.area()}');

            case 2:
              print('Enter base of the triangle: ');
              double base = double.parse(stdin.readLineSync()!);

              print('Enter height of the triangle: ');
              double triangleHeight = double.parse(stdin.readLineSync()!);

              Triangle tri = Triangle(base, triangleHeight);
              print('Area of Triangle: ${tri.area()}');
          }
        }
    }
  }
}
