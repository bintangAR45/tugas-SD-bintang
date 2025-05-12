class DNode<T> {
  T? value;
  DNode<T>? prev;
  DNode<T>? next;

  // Konstruktor default
  DNode() {
    value = null;
    prev = next = this;
  }

  // Konstruktor dengan nilai
  DNode.withValue(this.value) {
    prev = next = this;
  }
}

class DoubleLinkedList<T> {
  DNode<T>? head;

  // Cek apakah list kosong
  bool isEmpty() => head == null;

  // Tambah node di depan
  void addFirst(T value) {
    final newNode = DNode.withValue(value);

    if (isEmpty()) {
      head = newNode;
    } else {
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
    }
  }

  // Hapus node di depan
  void deleteFront() {
    if (!isEmpty()) {
      if (head!.next != null && head!.next != head) {
        final deleteNode = head;
        head = head!.next;
        head!.prev = null;
        deleteNode!.next = null;
      } else {
        head = null;
      }
    }
  }

  // Tambah node sebelum target
  void insertBefore(DNode<T> newNode, DNode<T> target) {
    if (target.prev != null) {
      final prevNode = target.prev;
      newNode.next = target;
      newNode.prev = prevNode;
      prevNode!.next = newNode;
      target.prev = newNode;
    }
  }

  // Menampilkan semua elemen (untuk debugging)
  void printList() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}
