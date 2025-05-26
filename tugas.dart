import 'dart:io';
import 'dart:collection';

class Node<T> {
  T value;
  Node<T>? left;
  Node<T>? right;

  Node(this.value);
}

class BinaryTree<T> {
  Node<T>? root;

  // Pre-order non-rekursif: NLR
  void preOrder() {
    if (root == null) return;

    final stack = <Node<T>>[];
    stack.add(root!);

    while (stack.isNotEmpty) {
      final current = stack.removeLast();
      stdout.write('${current.value} ');

      if (current.right != null) stack.add(current.right!);
      if (current.left != null) stack.add(current.left!);
    }
  }

  // In-order non-rekursif: LNR
  void inOrder() {
    final stack = <Node<T>>[];
    Node<T>? current = root;

    while (stack.isNotEmpty || current != null) {
      if (current != null) {
        stack.add(current);
        current = current.left;
      } else {
        current = stack.removeLast();
        stdout.write('${current.value} ');
        current = current.right;
      }
    }
  }

  // Post-order non-rekursif: LRN
  void postOrder() {
    if (root == null) return;

    final s1 = <Node<T>>[];
    final s2 = <Node<T>>[];

    s1.add(root!);
    while (s1.isNotEmpty) {
      final current = s1.removeLast();
      s2.add(current);

      if (current.left != null) s1.add(current.left!);
      if (current.right != null) s1.add(current.right!);
    }

    while (s2.isNotEmpty) {
      stdout.write('${s2.removeLast().value} ');
    }
  }

  //1. Tambah node berdasarkan level-order traversal
  void insertLevelOrder(T data) {
    final newNode = Node<T>(data);

    if (root == null) {
      root = newNode;
      return;
    }

    final antrian = Queue<Node<T>>();
    antrian.add(root!);

    while (antrian.isNotEmpty) {
      final nodeSekarang = antrian.removeFirst();

      if (nodeSekarang.left == null) {
        nodeSekarang.left = newNode;
        break;
      } else {
        antrian.add(nodeSekarang.left!);
      }

      if (nodeSekarang.right == null) {
        nodeSekarang.right = newNode;
        break;
      } else {
        antrian.add(nodeSekarang.right!);
      }
    }
  }

  //2. Tambah node ke node tertentu (cari pakai linear search)
  bool tambahKeTarget(T target, T dataBaru) {
    if (root == null) return false;

    final antrean = Queue<Node<T>>();
    antrean.add(root!);

    while (antrean.isNotEmpty) {
      final simpul = antrean.removeFirst();

      if (simpul.value == target) {
        if (simpul.left == null) {
          simpul.left = Node(dataBaru);
          return true;
        } else if (simpul.right == null) {
          simpul.right = Node(dataBaru);
          return true;
        } else {
          return false;
        }
      }

      if (simpul.left != null) antrean.add(simpul.left!);
      if (simpul.right != null) antrean.add(simpul.right!);
    }

    return false; // Target tidak ditemukan
  }
}

void main() {
  final tree = BinaryTree<String>();

  // Bangun tree awal
  tree.root = Node("A");
  tree.root!.left = Node("B");
  tree.root!.right = Node("C");
  tree.root!.left!.left = Node("D");
  tree.root!.left!.right = Node("E");
  tree.root!.right!.left = Node("F");
  tree.root!.right!.right = Node("G");

  print('Traversal Pre-Order (NLR):');
  tree.preOrder();

  print('\nTraversal In-Order (LNR):');
  tree.inOrder();

  print('\nTraversal Post-Order (LRN):');
  tree.postOrder();

  print('\n\nMenambahkan simpul menggunakan level-order:');
  tree.insertLevelOrder("H");
  tree.insertLevelOrder("I");
  tree.preOrder();

  print('\n\nMenambahkan simpul berdasarkan target node:');
  tree.tambahKeTarget("B", "X");
  tree.tambahKeTarget("F", "Y");
  tree.preOrder();
}
