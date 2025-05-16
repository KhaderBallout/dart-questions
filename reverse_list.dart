void main() {
  print("Stack reverse list Challenge");
  List<String> sport = ['FootBall', 'BasketBall', 'HandBall', 'Tennis'];
  print(sport);
  print("Reverse list output:");
  reverseList(sport);

}


// I Create a stack as a list.
// Then, I added the passed list value using add function to my Stack.
// Then, I delete the last element from the list with is removeLast.
// So, using LIFO approach I reverse my list order.
void reverseList(List<dynamic> myList ) {
  List<dynamic> stack = [];

  for (var item in myList) {
    stack.add(item);
  }
  for (int i = 0; i< myList.length; i++ ){
    print(stack.removeLast());
  }

}