class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}

void printList<T>(Node<T>? head) {
  while (head != null) {
    print(head.value);
    head = head.next;
  }
}