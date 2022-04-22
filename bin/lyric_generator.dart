void main() async {
  print('Ready sing');
  line1();
  line2();
  line3();
  print(await line4());
}

Future<void> line1() {
  return Future.delayed(
      Duration(seconds: 2), () => print('Happy Birthday to You.'));
}

Future<void> line2() {
  return Future.delayed(
      Duration(seconds: 5), () => print('Happy Birthday to You..'));
}

Future<void> line3() {
  return Future.delayed(
      Duration(seconds: 8), () => print('Happy Birthday, Happy Birthday...'));
}

Future<String> line4() async {
  String greeting = 'Happy Birthday to You.';
  return await Future.delayed(Duration(seconds: 11), () => greeting);
}
