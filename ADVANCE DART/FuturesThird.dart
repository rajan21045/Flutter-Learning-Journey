//Option 2: Using .then() (Without async/await)
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Data loaded";
  });
}

void main() {
  print("Loading...");
  fetchData().then((result) {
    print(result);
  });
}