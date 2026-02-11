import 'dart:io';

void main() {
  atm();
}

void atm() {
  bool condition = true;

  while (condition) {
    print('Enter Amount :');
    String? amount = stdin.readLineSync();

    try {
      int amountInInt = int.parse(amount!);

    

      if (amountInInt % 500 != 0 || amountInInt <= 0 ) {
        print('Amount must be multiple of 500');

        return;
      } else {

        int notesOf5k = 0;
        int notesof1k = 0;
        int notesOf500 = 0;

        int remainingAmount = amountInInt;

        if (amountInInt <= 5000 && amountInInt > 1000) {
          if (amountInInt % 1000 == 0) {
            notesof1k = remainingAmount ~/ 1000;
           notesof1k = notesof1k - 1;

            notesOf500 = 2;
          } else {
            notesof1k = remainingAmount ~/ 1000;
            notesof1k = notesof1k - 1;

            notesOf500 = 1;
          }
        } 
        else if (amountInInt > 5000) {
          int remainingAmount = amountInInt;

          notesOf5k = remainingAmount ~/ 5000;
          notesOf5k = notesOf5k - 1;
          remainingAmount = remainingAmount - (notesOf5k * 5000);

          if (remainingAmount % 1000 == 0) {
            notesof1k = remainingAmount ~/ 1000;
            notesof1k = notesof1k - 1;

            notesOf500 = 2;
          } else {
            notesof1k = remainingAmount ~/ 1000;
            notesof1k = notesof1k - 1;

            notesOf500 = 1;
          }
        }
        else {

          notesOf500 = amountInInt ~/ 500;

        }

        print('Notes of 5000 : ${notesOf5k}');
        print('Notes of 1000 : ${notesof1k}');
        print('Notes of 500 : ${notesOf500}');
      }
      
    } catch (e) {
      print(e);

      print('Exception occured');
    } finally {
      print('Finally block');
    }

    print('Continue or enter q to exit');
    String? temp = stdin.readLineSync();

    if (temp == "q" || temp == "Q") {
      condition = false;
    }
  }
}
