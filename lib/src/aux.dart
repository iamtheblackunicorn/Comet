String shortenString(int range, String stringSubject) {
  List<String> chars = stringSubject.split('');
  String shorterString = chars.sublist(0, range).join('');
  return '$shorterString...';
}
