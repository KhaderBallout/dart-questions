void main() {
  print("Balance Parentheses Challenge");
  String validParentheses = "(())";
  String inValidParentheses = ")(";

  bool valid = checkParentheses(validParentheses);
  print("${validParentheses} is a balanced Parentheses : ${valid}");

  bool invalid = checkParentheses(inValidParentheses);
  print("${inValidParentheses} is a balanced Parentheses : ${invalid}");

}


// I Created a stack as a list.
// Then iterated over each char in the String.
// If the Char is '(' , I pushed it onto the stack.
// If the character is ')', I tried to pop from the stack.
// If the stack is empty when encountering ')', the string is invalid.
// Note: All other Char are ignored.
bool checkParentheses(String myString){
  List<String> stack = [];

  for (var char in myString.split('')) {
    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isEmpty) return false;
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}
