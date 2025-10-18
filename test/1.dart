void main() {
  Solution sol = Solution();

  String s = "ali";
  String t = "ila";

  if (sol.isAnagram(s, t)) {
    print('$s and $t are anagrams.');
  } else {
    print('$s and $t are not anagrams.');
  }
}

class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    Map<String, int> sCount = {};
    Map<String, int> tCount = {};

    for (int i = 0; i < s.length; i++) {
      String chS = s[i];
      sCount[chS] = (sCount[chS] ?? 0) + 1;

      String chT = t[i];
      tCount[chT] = (tCount[chT] ?? 0) + 1;
    }

    if (sCount.length != tCount.length) return false;

    for (String key in sCount.keys) {
      if (sCount[key] != tCount[key]) return false;
    }

    return true;
  }
}
