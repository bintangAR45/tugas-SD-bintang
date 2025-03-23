void shellSort<T extends Comparable<T>>(List<T> arr) {
  int gap = arr.length;
  bool didSwap = true;
  while (gap > 1 || didSwap) {
    gap = (gap / 2).floor(); // Mengurangi jarak
    didSwap = false;
    for (int i = 0; i + gap < arr.length; i++) {
      if (arr[i].compareTo(arr[i + gap]) > 0) {
// Tukar elemen di posisi i dan i + gap
        T temp = arr[i];
        arr[i] = arr[i + gap];
        arr[i + gap] = temp;
        didSwap = true;
      }
    }
  }
}

void display<T>(List<T> data) {
  for (T element in data) {
    print('$element ');
  }
  print(''); // Untuk baris baru
}

void main() {
  List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
  data.shuffle();
  print('Data Sebelum Pengurutan:');
  display(data);
  DateTime startTime = DateTime.now();
  shellSort<num>(data);
  Duration elapsedTime = DateTime.now().difference(startTime);
  print('Data Setelah Pengurutan:');
  display(data);
  print('Waktu Eksekusi: ${elapsedTime.inMilliseconds} ms');
}
