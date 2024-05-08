import 'dart:io';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exception.dart';
import 'models/account.dart';

void main() {
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
        idSender: "Kako", idReceiver: "Ricarth", amount: 50);
    if (result) {
      print("Transação concluida com sucesso");
    }
  } on SenderIdInvalidException catch (e) {
    print("O ID ${e.idSender} do remetente não é um ID valido");
  } on ReceiverIdInvalidException catch (e) {
    print("O ID ${e.idReceiver} do distinatario não é valido");
  } on SenderNotAuthenticatedException catch (e) {
    print("O ID ${e.idSender} do distinatario não esta autenticado");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(
        "O usuario de ${e.idSender} tentou enviar ${e.amount} sendo que na sua conta tem apenas ${e.senderBalance}");
  } on Exception catch (e) {
    print("Algo deu errado");
  }
}
