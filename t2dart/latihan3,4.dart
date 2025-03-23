void selectionSortAscending(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    // Tukar elemen
    if (minIndex != i) {
      int temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }
}

void selectionSortDescending(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    int maxIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (arr[j] > arr[maxIndex]) {
        maxIndex = j;
      }
    }
    // Tukar elemen
    if (maxIndex != i) {
      int temp = arr[i];
      arr[i] = arr[maxIndex];
      arr[maxIndex] = temp;
    }
  }
}

void main() {
  List<int> dataAscending = [64, 25, 12, 22, 11];
  List<int> dataDescending = [64, 25, 12, 22, 11];

  print("Data sebelum pengurutan (Ascending): $dataAscending");
  selectionSortAscending(dataAscending);
  print("Data setelah pengurutan (Ascending): $dataAscending");

  print("Data sebelum pengurutan (Descending): $dataDescending");
  selectionSortDescending(dataDescending);
  print("Data setelah pengurutan (Descending): $dataDescending");
}
