class Dnode<T>{ 
   T nodeValue;   // data value of the node 
   Dnode? prev; // previous node in the list 
   Dnode? next; // next node in the list 
 
   /* default constructor; creates an object with the value set to null 
and whose references point to the node itself */ 
 
 DNode(this.nodeValue) 
   : next = null, prev = null; 
} 
void printList(Dnode? node) { 
    Dnode? tail; 
    tail = null; 
    print("Traversal in Forward Direction: "); 
    while (node != null) { 
       stdout.write("${node.nodeValue} "); 
       tail = node; 
         node = node.next; 
     } 
     print(""); 
     print("Traversal in Reverse Direction: "); 
     while (tail != null) { 
         stdout.write("${tail.nodeValue} "); 
         tail = tail.prev; 
     }
     print("object");
}