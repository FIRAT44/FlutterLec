main(List<String> args) {
  MyStack mystack = MyStack();
  mystack.push(5);
  mystack.push("emre");
  mystack.push(true);

  print(mystack.pop());
  print(mystack.pop());
  print(mystack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);

  print("===" * 10);

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("emre");
  print(genericStack.pop());
}

class MyStack {
  List _listem = [];

  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

  pop() {
    return _listem.removeLast();
  }
}

class IntMyStack {
  List<int> _listem = <int>[];

  void push(int yeniEleman) {
    _listem.add(yeniEleman);
  }

  int pop() {
    return _listem.removeLast();
  }
}

class StringMyStack {
  List<String> _listem = <String>[];

  void push(String yeniEleman) {
    _listem.add(yeniEleman);
  }

  String pop() {
    return _listem.removeLast();
  }
}

class GenericStack<T> {
  List<T> _listem = <T>[];

  void push(T yeniEleman) {
    _listem.add(yeniEleman);
  }

  T pop() {
    return _listem.removeLast();
  }
}
