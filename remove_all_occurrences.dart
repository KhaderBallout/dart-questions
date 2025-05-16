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
printList(removeAll(node1, 3));

}

Node<T>? removeAll<T>(Node<T>? head, T target) {
  // Remove matching nodes from the start
  while (head != null && head.value == target) {
    head = head.next;
  }
  // after removing matching nodes from the start we will have new head
  Node<T>? current = head;

  while (current != null && current.next != null) {
    if (current.next!.value == target) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
}