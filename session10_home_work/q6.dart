/*
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 An input string is valid if:
 1. Open brackets must be closed by the same type of brackets.
 2. Open brackets must be closed in the correct order.
 3. Every close bracket has a corresponding open bracket of the same type.
*/

void main() {
  String s1 = "()";
  String s2 = "()[]{}";
  String s3 = "(]";
  String s4 = "([)]";
  String s5 = "{[]}";

  print(isValid(s1));
  print(isValid(s2)); 
  print(isValid(s3)); 
  print(isValid(s4)); 
  print(isValid(s5)); 
}

bool isValid(String s) {
  Map<String, String> valueTemplate = {
    '(': ')',
    '{': '}',
    '[': ']',
  };
  List<String> correctValues = [];

  for (int i = 0; i < s.length; i++) {
    String current = s[i];
    if (valueTemplate.containsKey(current)) {
      correctValues.add(current);
    } else if (valueTemplate.containsValue(current)) {
      if (correctValues.isEmpty || valueTemplate[correctValues.removeLast()] != current) {
        return false;
      }
    }
  }
  return correctValues.isEmpty;
}