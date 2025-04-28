import 'dart:io';

void main() {
  bool lanjut = true;

  while (lanjut) {
    stdout.write('\nMasukkan kalimat: ');
    String kalimat = stdin.readLineSync()!;

    String dibalik = balikKalimat(kalimat);
    bool palindrom = cekPalindromPintar(kalimat);

    print('\n=== Hasil ===');
    print('Kalimat dibalik  = $dibalik');
    print(palindrom ? 'Palindrom' : 'Bukan palindrom');

    stdout.write('\nCoba lagi? (y/n): ');
    String? jawaban = stdin.readLineSync();
    if (jawaban == null || jawaban.toLowerCase() != 'y') {
      lanjut = false;
      print('\nTerima kasih sudah mencoba!');
    }
  }
}

// Fungsi untuk membalik kalimat
String balikKalimat(String kalimat) {
  return kalimat.split('').reversed.join('');
}

// Fungsi cek palindrom pintar (abaikan spasi, huruf besar, tanda baca)
bool cekPalindromPintar(String kalimat) {
  String hanyaHuruf =
      kalimat.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String dibalik = hanyaHuruf.split('').reversed.join('');
  return hanyaHuruf == dibalik;
}
