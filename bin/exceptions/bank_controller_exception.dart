class SenderIdInvalidException implements Exception {
  static const String report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidException({required this.idSender});

  @override
  String toString() {
    return "$report\n ID Sender: $idSender";
  }
}

class ReceiverIdInvalidException implements Exception {
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString() {
    return "$report\n ID Receiver: $idReceiver";
  }
}

class SenderNotAuthenticatedException implements Exception {
  static const report = "SenderNotAuthenticatedException";
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString() {
    return "$report\n ID Sender: $idSender";
  }
}

class SenderBalanceLowerThanAmountException implements Exception {
  static const String report = "SenderBalanceLowerThanAmountException";
  String idSender;
  double senderBalance;
  double amount;
  SenderBalanceLowerThanAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});

  @override
  String toString() {
    return "$report\n ID Sender: $idSender\n Balance: $senderBalance\n e amount: $amount\n";
  }
}
