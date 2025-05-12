class Node<T> {
  T? value;
  Node<T>? next;

  // Konstruktor default
  Node();

  // Konstruktor dengan nilai awal
  Node.withValue(this.value);
}

class SingleLinkedList<T> {
  Node<T>? head;

  // Menambahkan node di akhir list
  void addLast(T value) {
    var newNode = Node.withValue(value);

    if (head == null) {
      head = newNode;
    } else {
      var current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  // Menampilkan semua elemen dalam list
  void printList() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  // Contoh penggunaan
  var list = SingleLinkedList<int>();
  list.addLast(10);
  list.addLast(20);
  list.addLast(30);

  list.printList(); // Output: 10 20 30
}
