void main() async {
  print('Ready sing');
  await line1();
  await line2();
  line3();
  print(await line4());
}

Future<void> line1() async {
  return await Future.delayed(
      Duration(seconds: 2), () => print('Happy Birthday to You.'));
}

Future<void> line2() async {
  return await Future.delayed(
      Duration(seconds: 3), () => print('Happy Birthday to You..'));
}

Future<void> line3() {
  return Future.delayed(
      Duration(seconds: 2), () => print('Happy Birthday, Happy Birthday...'));
}

Future<String> line4() async {
  String greeting = 'Happy Birthday to You.';
  return await Future.delayed(Duration(seconds: 11), () => greeting);
}
