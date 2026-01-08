class Box<T> {
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }
}

void main() {
  Box<int> intBox = Box(10);
  Box<String> stringBox = Box("Dart");

  print(intBox.getValue()); // 10
  print(stringBox.getValue()); // Dart

  print(getFirst<int>([1, 2, 3]));
  print(getFirst<String>(["Rajan", "Ujjwal", "Prabin"]));
}

T getFirst<T>(List<T> items) {
  return items[0];
}
