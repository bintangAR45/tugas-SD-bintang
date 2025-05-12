class DNode<T> {
  T? nodeValue; // data value of the node
  DNode<T>? prev; // previous node in the list
  DNode<T>? next; // next node in the list

  // default constructor; creates an object with the value set to nulland whose references point to the node itself
  DNode() {
    nodeValue = null;
    // the next node is the current node
    next = this;
    // the previous node is the current
    prev = this;
  }

  // creates object whose value is item and whose references point to the node itself
  DNode(T item) {
    nodeValue = item;
    // the next node is the current node
    next = this;
    // the previous node is the current node
    prev = this;
  }
}
