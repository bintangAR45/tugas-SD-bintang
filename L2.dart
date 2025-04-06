int comparisons = 0; // Variabel global untuk menghitung perbandingan

int binarySearch(List<int> arr, int left, int right, int key) {
  if (right >= left) {
    comparisons++; // Tambahkan setiap kali perbandingan dilakukan
    int mid = left + ((right - left) ~/ 2);

    if (arr[mid] == key) {
      return mid;
    }

    if (arr[mid] > key) {
      return binarySearch(arr, left, mid - 1, key);
    }

    return binarySearch(arr, mid + 1, right, key);
  }

  return -1;
}

void main() {
  List<int> arr = [2, 3, 4, 10, 40];
  int x = 40;

  int result = binarySearch(arr, 0, arr.length - 1, x);
  print("Jumlah perbandingan: $comparisons");
  if (result == -1) {
    print("Elemen tidak ada dalam array");
  } else {
    print("Elemen ditemukan pada indeks ke: $result");
  }
}
