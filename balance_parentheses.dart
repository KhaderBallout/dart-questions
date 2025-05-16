void main() {
  print("Balance Parentheses Challenge");
  String validParentheses = "(())";
  String inValidParentheses = ")(";

  bool valid = checkParentheses(validParentheses);
  print("${validParentheses} is a balanced Parentheses : ${valid}");

  bool invalid = checkParentheses(inValidParentheses);
  print("${inValidParentheses} is a balanced Parentheses : ${invalid}");

}


// I Create a stack as a list.
// Then iterate on the String value.
// Then if I found '(' value in the String, I will add it to the stack.
// Then if I found ) value in the string, I will delete it from the stack.
// Note that any other Char will be skip.
// if we have an empty stack, so it's valid, if not it's not valid
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
