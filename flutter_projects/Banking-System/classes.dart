import 'dart:io';

class BankAccount {
  retry() {
    print("Do you want to do any operations? (y/n): ");
    String? ans = stdin.readLineSync();
    if (ans == 'y') {
      normal n = normal();
      n.deposit();  // Start with deposit method as a default entry point.
    } else {
      print("Thank you!");
    }
  }
}

class normal extends BankAccount {
  int balance = 0;

   deposit() {
    print("Enter the operation you want to do:");
    print("Enter (1) if you want to Withdraw");
    print("Enter (2) if you want to Deposit");
    print("Enter (3) if you want to know your balance");
    print("Enter (4) if you want to transfer money");

    String? op = stdin.readLineSync();
    switch (op) {
      case '1': // Withdraw
        withdraw();
        break;
      case '2': // Deposit
        print("Enter the amount you want to deposit:");
        int deposit = int.tryParse(stdin.readLineSync()!) ?? 0;
        balance += deposit;
        print("** Successful operation ** \nYour new balance is \$ $balance");
        retry();
        break;
      case '3': // Check balance
        print("Your current balance is \$ $balance");
        retry();
        break;
      case '4': // Transfer money
        transfer();
        break;
      default:
        print("Invalid operation. Please try again.");
        retry();
    }
  }

   withdraw() {
    print("Enter the amount you want to withdraw:");
    int withdraw = int.tryParse(stdin.readLineSync()!) ?? 0;
    balance = 10000;
    if (withdraw > balance) {
      print("Insufficient balance");
    } else {
      balance -= withdraw;
      print("Your new balance is \$ $balance");
    }
    retry();
  }

   transfer() {
    print("Enter the account number of the recipient:");
    String? recipient = stdin.readLineSync();
    print("Enter the amount you want to transfer:");
    int transfer = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (transfer > balance) {
      print("Insufficient balance");
    } else {
      balance -= transfer;
      print("** Successful operation ** \nYour new balance is \$ $balance");
    }
    retry();
  }
}

class saving extends BankAccount {
  double interest = 0.01; // Interest is 1%
  double balance = 0;

   deposit() {
    print("Enter the amount you want to deposit:");
    int deposit = int.tryParse(stdin.readLineSync()!) ?? 0;
    balance += deposit;
    balance += balance * interest;
    print("** Successful operation ** \nYour new balance is \$ $balance");
    retry();
  }

   withdraw() {
    print("Enter the amount you want to withdraw:");
    int withdraw = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (withdraw > balance) {
      print("Insufficient balance");
    } else {
      balance -= withdraw;
      balance += balance * interest;
      print("Your new balance is \$ $balance");
    }
    retry();
  }

   knowBalance() {
    print("Your current balance is \$ $balance");
    retry();
  }

   transfer() {
    print("Enter the account number you want to transfer to:");
    int transfereAcc = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (transfereAcc.toString().length <= 8) {
      print("Enter the amount you want to transfer:");
      int transfere = int.tryParse(stdin.readLineSync()!) ?? 0;
      balance=10000;
      if (transfere > balance) {
        print("Insufficient balance");
      } else {
        balance -= transfere;
        balance -= balance * interest;
        print("Your new balance is \$ $balance");
      }
    } else {
      print("Invalid account number.");
    }
    retry();
  }
}
