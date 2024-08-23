class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Balance after deposit: $_balance');
    } else {
      print('Invalid deposit amount');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Balance: $_balance');
    } else {
      print('insufficient balance');
    }
  }
}
