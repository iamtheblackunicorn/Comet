// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

String shortenString(int range, String stringSubject) {
  List<String> chars = stringSubject.split('');
  String shorterString = chars.sublist(0, range).join('');
  return '$shorterString...';
}
