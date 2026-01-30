import 'dart:io';

void main() {
  print("Enter amount:");
  int amount = int.parse(stdin.readLineSync()!);

  int note500 = 500;
  int forced500Notes = 2;
  int forcedAmount = forced500Notes * note500;

  if (amount < forcedAmount) {
    print("Amount must be at least Rs.$forcedAmount to give 2 notes of 500.");
    return;
  }

  // Give 2 notes of 500 first
  int count500 = forced500Notes;
  amount -= forcedAmount;

  // Now distribute remaining using bigger notes
  int count5000 = amount ~/ 5000;
  amount %= 5000;

  int count1000 = amount ~/ 1000;
  amount %= 1000;

  print("\nATM Cash Breakdown:\n");
  print("5000 x $count5000");
  print("1000 x $count1000");
  print("500  x $count500");

  if (amount > 0) {
    print("\nRemaining amount (not dispensed): Rs.$amount");
  }
}
