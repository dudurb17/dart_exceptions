class Account {
  String name;
  double balance;
  bool isAuthenticated;
  DateTime? createAt;
//asserts serve somente para produção, se der false ele vai parar e retornar a frase
  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated,
      this.createAt})
      : assert(name.isEmpty, "O nome pode ser uma string vazia"),
        assert(balance >= 0, "O valor nao pode ser menor q zero ou zero");

  editBalance({required value}) {
    balance = balance + value;
  }
}
