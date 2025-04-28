import 'dart:io';

class Antrian {
  List<String> queue = []; // langsung dibuat kosong
  int maxSize;

  Antrian(this.maxSize);

  void tambahAntrian(String nama) {
    if (queue.length >= maxSize) {
      print('Antrian penuh! $nama tidak dapat ditambahkan.');
    } else {
      queue.add(nama);
      print('$nama telah ditambahkan ke antrian.');
    }
  }

  void kurangiAntrian() {
    if (queue.isEmpty) {
      print('Antrian kosong! Tidak ada yang bisa dikeluarkan.');
    } else {
      String nama = queue.removeAt(0);
      print('$nama telah keluar dari antrian.');
    }
  }

  void tampilkanAntrian() {
    if (queue.isEmpty) {
      print('Antrian kosong.');
    } else {
      print('Daftar antrian:');
      for (int i = 0; i < queue.length; i++) {
        print('${i + 1}. ${queue[i]}');
      }
    }
  }
}

void main() {
  stdout.write('Masukkan kapasitas maksimal antrian: ');
  int kapasitas = int.parse(stdin.readLineSync()!);

  Antrian antrian = Antrian(kapasitas);

  while (true) {
    print('\n=== MENU ANTRIAN ===');
    print('1. Tambah antrian');
    print('2. Keluarkan dari antrian');
    print('3. Tampilkan antrian');
    print('4. Keluar');
    stdout.write('Pilih menu (1-4): ');

    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        stdout.write('Masukkan nama untuk antrian: ');
        String nama = stdin.readLineSync()!;
        antrian.tambahAntrian(nama);
        break;
      case 2:
        antrian.kurangiAntrian();
        break;
      case 3:
        antrian.tampilkanAntrian();
        break;
      case 4:
        print('Terima kasih! Program selesai.');
        return;
      default:
        print('Pilihan tidak valid. Silakan pilih antara 1-4.');
    }
  }
}
