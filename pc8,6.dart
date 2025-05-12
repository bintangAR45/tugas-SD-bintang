// menambahkan data baru atau di akhir node
void InsertTailNode(dynamic data) {
  Dnode newNode = Dnode(data);
  if (isEmpty()) {
    append(data);
  } else {
    Dnode? temp = head;
    while (temp!.next != null) {
      temp = temp.next;
    }
    temp.next = anewNode;
    newNode.prev = temp;
  }
}
