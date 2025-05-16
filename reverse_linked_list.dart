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
printList(reverseList(node1));

}
// using 2 pointer approach
// https://www.geeksforgeeks.org/two-pointer-technique-in-a-linked-list/
Node<T>? reverseList<T>(Node<T>? head) {
  Node<T>? previous = null;
  Node<T>? current = head;

  while (current != null) {
    final nextNode = current.next;
    current.next = previous;
    previous = current;
    current = nextNode;
  }

  return previous;
}