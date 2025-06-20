class StrongBox<T> {
  T? _value;

  void put({T? input}) {
    _value = input;
  }

  T? get() {
    return _value;
  }
}
