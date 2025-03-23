void insertionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;

    // Pindahkan elemen yang lebih besar dari key satu posisi ke depan
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
}

void main() {
  List<int> data = [9, 5, 1, 4, 3];
  print("Data sebelum sorting: $data");

  insertionSort(data);

  print("Data setelah sorting: $data");
}
