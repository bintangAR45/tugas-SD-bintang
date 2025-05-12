// Menambahkan data sebelum head
void InsertBeforeHead(dynamic data) {
  Dnode newNode = Dnode(data);
  if (isEmpty()) {
    append(data);
  } else {
    newNode.next = head;
    head!.prev = newNode;
    head = newNode;
  }
}
