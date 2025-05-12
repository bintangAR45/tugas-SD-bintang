import 'dart:io';

class Dnode {
  int nodeValue;
  Dnode? next, prev;

  Dnode(this.nodeValue)
      : next = null,
        prev = null;
}

class DoubleLinkedList {
  Dnode? head, tail;

  bool isEmpty() {
    return head == null;
  }

  void push(int data) {
    Dnode baru = Dnode(data);
    if (isEmpty()) {
      head = baru;
      head!.next = null;
      head!.prev = null;
    } else {
      baru.next = head;
      head!.prev = baru;
      head = baru;
    }
  }

  void append(int data) {
    Dnode baru = Dnode(data);
    if (isEmpty()) {
      head = baru;
      head!.next = null;
      head!.prev = null;
    } else {
      Dnode? bantu = head;
      while (bantu!.next != null) {
        bantu = bantu.next;
      }
      bantu.next = baru;
      baru.prev = bantu;
    }
  }

  Dnode? findNode(int data) {
    Dnode? sekarang = head;
    while (sekarang != null) {
      if (sekarang.nodeValue == data) {
        return sekarang;
      }
      sekarang = sekarang.next;
    }
    return sekarang;
  }

  void deletefront() {
    if (!isEmpty()) {
      if (head!.next != null) {
        Dnode? hapus = head;
        head = head!.next;
        head!.prev = null;
        hapus!.next = null;
      } else {
        head = null;
      }
    }
  }

  void deleteEnd() {
    Dnode? bantu;
    if (!isEmpty()) {
      if (head!.next != null) {
        bantu = head;
        while (bantu!.next != null) {
          bantu = bantu.next;
        }
        bantu.next!.prev = null;
        bantu.next = null;
      } else {
        head = null;
      }
    }
  }

  void deleteMiddleFront(int cari) {
    if (!isEmpty()) {
      if (head!.nodeValue == cari) {
        deletefront();
      } else if (head!.next != null) {
        Dnode? bantu = head;
        while (bantu!.next != null && bantu.next!.nodeValue != cari) {
          bantu = bantu.next;
        }

        if (bantu.next != null) {
          Dnode? hapus = bantu.next;
          bantu.next = hapus!.next;
        }
      }
    }
  }

  void deleteMiddleEnd(int cari) {
    if (!isEmpty()) {
      if (tail!.nodeValue == cari) {
        deleteEnd();
      } else if (tail!.next != null) {
        Dnode? bantu = tail;
        while (bantu!.next != null && bantu.next!.nodeValue != cari) {
          bantu = bantu.next;
        }
      }
    }
  }
}

void printList(Dnode? node) {
  Dnode? tail;
  tail = null;
  print("traversal in forward direction: ");
  while (node != null) {
    stdout.write("${node.nodeValue}");
    tail = node;
    node = node.next;
  }
  print("");
  print("ppppp");
  while (tail != null) {
    stdout.write("${tail.nodeValue}");
    tail = tail.prev;
  }
  print("");
}

void main() {
 
}