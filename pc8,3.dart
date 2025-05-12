void DeletteEnd() {
  Dnode? temp;
  if (!isEmpty()) {
    if (head!.next != null) {
      temp = head;
      while (temp!.next!.next != null) {
        temp = temp.next;
      }
      temp.next!.prev = null;
      temp.next = null;
    } else {
      head = null;
    }
  }
}
