import 'dart:math';
import 'dart:core';

// Fungsi untuk membuat array acak
List<int> generateRandomArray(int size) {
  Random random = Random();
  return List.generate(size, (_) => random.nextInt(100000));
}

// Insertion Sort
void insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
}

// Selection Sort
void selectionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp;
  }
}

// Bubble Sort
void bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

// Shell Sort
void shellSort(List<int> arr) {
  int n = arr.length;
  for (int gap = n ~/ 2; gap > 0; gap ~/= 2) {
    for (int i = gap; i < n; i++) {
      int temp = arr[i];
      int j;
      for (j = i; j >= gap && arr[j - gap] > temp; j -= gap) {
        arr[j] = arr[j - gap];
      }
      arr[j] = temp;
    }
  }
}

// Quick Sort
void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(arr, low, high);
    quickSort(arr, low, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = low - 1;
  for (int j = low; j < high; j++) {
    if (arr[j] < pivot) {
      i++;
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;
  return i + 1;
}

// Merge Sort
void mergeSort(List<int> arr) {
  if (arr.length > 1) {
    int mid = arr.length ~/ 2;
    List<int> left = arr.sublist(0, mid);
    List<int> right = arr.sublist(mid);

    mergeSort(left);
    mergeSort(right);

    int i = 0, j = 0, k = 0;
    while (i < left.length && j < right.length) {
      if (left[i] < right[j]) {
        arr[k++] = left[i++];
      } else {
        arr[k++] = right[j++];
      }
    }
    while (i < left.length) {
      arr[k++] = left[i++];
    }
    while (j < right.length) {
      arr[k++] = right[j++];
    }
  }
}

// Fungsi untuk mengukur waktu eksekusi
Duration measureExecutionTime(Function sortFunction, List<int> arr) {
  List<int> dataCopy = List.from(arr);
  Stopwatch stopwatch = Stopwatch()..start();
  sortFunction(dataCopy);
  stopwatch.stop();
  return stopwatch.elapsed;
}

void main() {
  int dataSize = 5000; // Menggunakan 5000 elemen untuk efisiensi
  List<int> data = generateRandomArray(dataSize);

  // Menjalankan dan mengukur waktu eksekusi
  print("Waktu Eksekusi Algoritma Sorting:");
  print("Insertion Sort: \${measureExecutionTime(insertionSort, data)}");
  print("Selection Sort: \${measureExecutionTime(selectionSort, data)}");
  print("Bubble Sort: \${measureExecutionTime(bubbleSort, data)}");
  print("Shell Sort: \${measureExecutionTime(shellSort, data)}");
  print(
      "Quick Sort: \${measureExecutionTime((arr) => quickSort(arr, 0, arr.length - 1), data)}");
  print("Merge Sort: \${measureExecutionTime(mergeSort, data)}");
}
