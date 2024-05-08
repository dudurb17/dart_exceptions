import 'dart:io';

import 'controllers/bank_controller.dart';
import 'models/account.dart';

// void main() {
//   // Criando o banco
//   BankController bankController = BankController();

//   // Adicionando contas
//   bankController.addAccount(
//       id: "Ricarth",
//       account:
//           Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

//   bankController.addAccount(
//       id: "Kako",
//       account:
//           Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

//   // Fazendo transferência
//   bool result = bankController.makeTransfer(
//       idSender: "Kako", idReceiver: "Ricarth", amount: 700);

//   // Observando resultado
//   print(result);
// }

void main() {
  print("Started Main");
  functionOne();
  print("finished Main");
}

void functionOne() {
  print("Started F01");
  try {
    functionTwo();
  } on FormatException catch (e) {
    print("Foi capturada dentro da functionOne");
    print(e.message);
    print(e.source);
    print(e.toString());
  } on HttpException catch (e) {
    print(e.uri);
  } on IOException catch (e) {
    print("Uma IOException foi encontrada");
    e.toString();
  } on Exception catch (e) {
    print(e);
  }

  print("Finished F01");
}

void functionTwo() {
  print("Started F02");
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse("Not number");
  }
  print("Finished 02");
}
