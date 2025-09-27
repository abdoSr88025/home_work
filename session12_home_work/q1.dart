/*
Q1
leetcode question
Given the head of a singly linked list, reverse the list, and return the reversed list.
*/

//Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

ListNode? reverseList(ListNode? head) {
  ListNode? prev = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev;
}

void printList(ListNode? head) {
  ListNode? current = head;
  while (current != null) {
    print(current.val);
    current = current.next;
  }
}

void main() {
  ListNode head = ListNode(
    1,
    ListNode(2, ListNode(3, ListNode(4, ListNode(5)))),
  );

  print(" Original List");
  printList(head);

  ListNode? reversed = reverseList(head);

  print(" Reversed List:");
  printList(reversed);
}
