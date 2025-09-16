/*
Q1
 Create a class BankAccount with a private field _balance.- Add a getter balance that returns the balance.
 - Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
 - In main(), demonstrate creating an account, updating the balance, and trying to set a negative
 balance
 */

class BankAccount {
  double? _balance;

  double get balance => _balance!;
  set balance(double value) {
    if (value < 0) {
      print('Invalid balance');
    } else {
      _balance = value;
    }
  }
}

void main() {
  BankAccount account = BankAccount();
  account.balance = 2000;
  account.balance = -100;
}
