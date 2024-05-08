void stackStart() {
  print("Started Main");
  functionOne();
  print("finished Main");
}

void functionOne() {
  print("Started F01");
  try {
    functionTwo();
  } catch (e, s) {
    print(s.toString);
    print(e.runtimeType);
  } finally {
    print("Chegou no finaly");
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
