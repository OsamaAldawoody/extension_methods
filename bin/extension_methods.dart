void main(List<String> arguments) {
  final result = findSubstring("osama", 2);
}

extension StringAlign on String {
  String stringAlign(int alignCharsNum) {
    if (alignCharsNum < length) {
      throw Exception(
          'Align characters must be greate than the intended string');
    }
    int mod = alignCharsNum - length;
    return '$this ${'-' * mod}';
  }
}

int diagonalDifference(List<List<int>> arr) {
  int d1 = 0;
  int d2 = 0;
  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr[i].length; j++) {
      if (i == j) {
        d1 += arr[i][j];
      }
      if (i + j == arr.length - 1) {
        d2 += arr[i][j];
      }
    }
  }
  return d1 - d2;
}

final vowelsChars = ["a", "e", "i", "o", "u"];
String findSubstring(String s, int k) {
  int vowles = 0;
  int tempVowels = 0;
  String temSubString = s.substring(0, k);
  for (int i = 0; i < s.length; i++) {
    for (var i = 0; i < s.length; i++) {
      if (vowelsChars.contains(s[i])) {
        vowles++;
      }
    }
    if (vowles == 0) {
      return "Not found";
    }

    final substring = s.substring(i, k);
    int subStringVowels = 0;
    for (int i = 0; i < substring.length; i++) {
      if (vowelsChars.contains(substring[i])) {
        subStringVowels++;
      }
    }
    if (tempVowels < subStringVowels) {
      tempVowels = subStringVowels;
      temSubString = substring;
    }
  }

  return temSubString;
}
