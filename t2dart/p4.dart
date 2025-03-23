void shellSort(List<int> arr) {
  int n = arr.length;
  // Menentukan jarak awal (gap) dengan membagi panjang array
  for (int gap = n ~/ 2; gap > 0; gap ~/= 2) {
    // Melakukan insertion sort dengan gap tertentu
    for (int i = gap; i < n; i++) {
      int temp = arr[i];
      int j = i;
      while (j >= gap && arr[j - gap] > temp) {
        arr[j] = arr[j - gap];
        j -= gap;
      }
      arr[j] = temp;
    }
  }
}

void display(List<int> data) {
  print(data);
}

void main() {
  List<int> data = [9, 5, 1, 4, 3, 8, 6, 7, 2, 10];
  print('Data sebelum sorting:');
  display(data);

  shellSort(data);

  print('Data setelah sorting:');
  display(data);
}
