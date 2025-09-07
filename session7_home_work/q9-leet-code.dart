
void main() {
  Solution solution = Solution();
  print(solution.isPalindrome("A man, a plan, a canal: Panama"));
  print(solution.isPalindrome("race a car")); 
}

class Solution {
  bool isPalindrome(String s) {
    String cleanString = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'),'');
    String reversedString = cleanString.split('').reversed.join();
    return cleanString == reversedString;
  }
}