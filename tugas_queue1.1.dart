import 'dart:io';

void main() {
  bool lanjut = true;

  while (lanjut) {
    stdout.write('Masukkan nilai desimal = ');
    int desimal = int.parse(stdin.readLineSync()!);

    print('\n=== Menu Konversi ===');
    print('1. Biner');
    print('2. Oktal');
    print('3. Heksadesimal');
    print('4. Semua');
    stdout.write('Pilih konversi (1/2/3/4) = ');
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        print('Hasil nilai biner = ${konversiBiner(desimal)}');
        break;
      case 2:
        print('Hasil nilai oktal = ${konversiOktal(desimal)}');
        break;
      case 3:
        print('Hasil nilai heksadesimal = ${konversiHeksadesimal(desimal)}');
        break;
      case 4:
        print('Hasil nilai biner = ${konversiBiner(desimal)}');
        print('Hasil nilai oktal = ${konversiOktal(desimal)}');
        print('Hasil nilai heksadesimal = ${konversiHeksadesimal(desimal)}');
        break;
      default:
        print('Pilihan tidak valid.');
    }

    stdout.write('\nApakah ingin konversi lagi? (y/n): ');
    String? jawaban = stdin.readLineSync();
    if (jawaban == null || jawaban.toLowerCase() != 'y') {
      lanjut = false;
      print('\nTerima kasih telah menggunakan program ini!');
    }
    print(''); // Biar ada jarak antar sesi
  }
}

// Fungsi konversi ke Biner
String konversiBiner(int desimal) {
  return desimal.toRadixString(2);
}

// Fungsi konversi ke Oktal
String konversiOktal(int desimal) {
  return desimal.toRadixString(8);
}

// Fungsi konversi ke Heksadesimal
String konversiHeksadesimal(int desimal) {
  return desimal.toRadixString(16).toUpperCase();
}
