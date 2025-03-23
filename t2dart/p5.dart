void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(arr, low, high);
    quickSort(arr, low, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high]; // Memilih elemen terakhir sebagai pivot
  int i = low - 1; // Indeks elemen yang lebih kecil dari pivot

  for (int j = low; j < high; j++) {
    if (arr[j] < pivot) {
      i++;
      // Tukar arr[i] dan arr[j]
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }

  // Tukar pivot ke posisi yang benar
  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;

  return i + 1; // Mengembalikan indeks pivot yang baru
}

void display(List<int> data) {
  print(data);
}

void main() {
  List<int> data = [9, 5, 1, 4, 3, 8, 6, 7, 2, 10];
  print('Data sebelum sorting:');
  display(data);

  quickSort(data, 0, data.length - 1);

  print('Data setelah sorting:');
  display(data);
}
