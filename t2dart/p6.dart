void mergeSort(List<int> arr, int left, int right) {
  if (left < right) {
    int mid = (left + right) ~/ 2;

    // Rekursif untuk bagian kiri dan kanan
    mergeSort(arr, left, mid);
    mergeSort(arr, mid + 1, right);

    // Gabungkan hasilnya
    merge(arr, left, mid, right);
  }
}

void merge(List<int> arr, int left, int mid, int right) {
  List<int> leftArr = arr.sublist(left, mid + 1);
  List<int> rightArr = arr.sublist(mid + 1, right + 1);

  int i = 0, j = 0, k = left;

  // Gabungkan dua sublist yang sudah terurut
  while (i < leftArr.length && j < rightArr.length) {
    if (leftArr[i] <= rightArr[j]) {
      arr[k] = leftArr[i];
      i++;
    } else {
      arr[k] = rightArr[j];
      j++;
    }
    k++;
  }

  // Salin sisa elemen jika ada
  while (i < leftArr.length) {
    arr[k] = leftArr[i];
    i++;
    k++;
  }

  while (j < rightArr.length) {
    arr[k] = rightArr[j];
    j++;
    k++;
  }
}

void display(List<int> data) {
  print(data);
}

void main() {
  List<int> data = [9, 5, 1, 4, 3, 8, 6, 7, 2, 10];
  print('Data sebelum sorting:');
  display(data);

  mergeSort(data, 0, data.length - 1);

  print('Data setelah sorting:');
  display(data);
}
