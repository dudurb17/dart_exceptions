import 'dart:io';
import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exception.dart';
import 'models/account.dart';

void TestingNullSafety() {
  Account? myAccount =
      Account(name: "Eduardo", balance: 200, isAuthenticated: true);
  ;

  //Simulando uma comunicação externa
  // Random rng = Random();
  // int randomNumber = rng.nextInt(10);
  // if (randomNumber <= 5) {
  //   myAccount = Account(name: "Eduardo", balance: 200, isAuthenticated: true);
  // }
  // print(myAccount.runtimeType);
  // if (myAccount != null) {
  //   print(myAccount.balance);
  // } else {
  //   print("A conta é nula");
  // }

  //Conversão direta: ma pratica
  //print(myAccount!.balance);
  // print(myAccount != null ? myAccount.balance : "Conta nula");
  // print(myAccount?.balance);

  print(myAccount.createAt);
  // print(myAccount.createAt.day);
  // print(myAccount.createAt!.day);
}

void main() {
  TestingNullSafety();
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: false));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 800, isAuthenticated: true));
  try {
// Fazendo transferência
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 950);
    if (result) {
      print("Transação concluida com sucesso");
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("O ID ${e.idSender} do remetente não é um ID valido");
  } on ReceiverIdInvalidException catch (e) {
    print("O ID ${e.idReceiver} do distinatario não é valido");
  } on SenderNotAuthenticatedException catch (e) {
    print("O ID ${e.idSender} do distinatario não esta autenticado");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        "O usuario de ${e.idSender} tentou enviar ${e.amount} sendo que na sua conta tem apenas ${e.senderBalance}");
  } on Exception {
    print("Algo deu errado");
  }
}
