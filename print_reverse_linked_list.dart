import 'linked-list.dart';

void main() {
final node1 = Node(value: 1);
final node2 = Node(value: 2);
final node3 = Node(value: 2);
final node4 = Node(value: 3);
final node5 = Node(value: 4);

node1.next = node2;
node2.next = node3;
node3.next = node4;
node4.next = node5;
printInReverse(node1);

}

// In this function I used recursion methodology to print the linked list
void printInReverse<T>(Node<T>? node) {
  if (node == null) return;
  printInReverse(node.next);
  print(node.value);
}
