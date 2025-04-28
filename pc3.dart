import 'dart:io';
import 'package:stack/stack.dart';

void main() {
  var stack = Stack<String>();
  bool lanjut = true;

  while (lanjut) {
    print('\n=== Menu Stack ===');
    print('1. Push (Tambah data)');
    print('2. Pop (Hapus data teratas)');
    print('3. Lihat isi Stack');
    print('4. Lihat elemen paling atas');
    print('5. Keluar');
    stdout.write('Pilih menu (1-5): ');
    int? pilihan = int.tryParse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        stdout.write('Masukkan data untuk push: ');
        String data = stdin.readLineSync()!;
        stack.push(data);
        print('Data "$data" berhasil ditambahkan ke Stack.');
        break;
      case 2:
        if (stack.isEmpty) {
          print('Stack kosong, tidak bisa pop!');
        } else {
          String popped = stack.pop();
          print('Data "$popped" berhasil di-pop.');
        }
        break;
      case 3:
        print('Isi Stack saat ini: $stack');
        break;
      case 4:
        if (stack.isEmpty) {
          print('Stack kosong, tidak ada elemen teratas.');
        } else {
          print('Elemen paling atas: ${stack.top()}');
        }
        break;
      case 5:
        lanjut = false;
        print('Terima kasih sudah menggunakan program Stack!');
        break;
      default:
        print('Pilihan tidak valid. Silakan pilih 1-5.');
    }
  }
}
