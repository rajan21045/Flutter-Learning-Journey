Future<String> getMessage() {
  return Future(() {
    return "Hello from Future!";
  });
}

void main(){
  getMessage().then((value) {
    print(value);
  });

  getMessage1().then((value) {
    print(value);
  });
}

Future<int> getMessage1() {
  return Future(() {
    return 5;
  });
}
