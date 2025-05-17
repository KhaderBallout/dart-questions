void main() {
  print("Stack reverse list Challenge");
  List<String> sport = ['FootBall', 'BasketBall', 'HandBall', 'Tennis'];
  print(sport);
  print("Reverse list output:");
  reverseList(sport);

}


// I Created a stack as a list.
// Then, I added the element of the list to the stack using add function.
// Then, I removed the last element from the stack using removeLast.
// So, using LIFO principle I reverse my list order.
void reverseList(List<dynamic> myList ) {
  List<dynamic> stack = [];

  for (var item in myList) {
    stack.add(item);
  }
  for (int i = 0; i< myList.length; i++ ){
    print(stack.removeLast());
  }

}