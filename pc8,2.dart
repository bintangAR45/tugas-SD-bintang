void DeleteFront() {
  if (!isEmpty()) {
    if (head!.next != null) {
      Dnode? delete = head;
      head = head!.next;
      head!.prev = null;
      delete!.next = null;
    } else {
      head = null;
    }
  }
}
