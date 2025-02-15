import 'dart:math';

String generateRandomString(int length) {
  const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  Random random = Random();
  return List.generate(length, (index) => characters[random.nextInt(characters.length)]).join();
}

List<String> generateRandomStrings(int numStrings, int length) {
  return List.generate(numStrings, (index) => generateRandomString(length));
}
List <String>getList (String answer )


{
  List<String>letters = generateRandomStrings(7 , 1);
List list = answer.split('');
for(String l in list) {
letters.add(l);
  }
  return letters;

}

