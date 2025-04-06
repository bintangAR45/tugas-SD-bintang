import 'tp3.dart';

void main() {
  List<Pegawai> pegawaiList = [
    Pegawai(nip: 101, nama: 'Andi', alamat: 'Purwokerto', golongan: 'A'),
    Pegawai(nip: 102, nama: 'Budi', alamat: 'Citeyem', golongan: 'B'),
    Pegawai(nip: 103, nama: 'Citra', alamat: 'Surabaya', golongan: 'C'),
  ];
//Contoh Binary Search (Pastikan sudah diurutkan)
  pegawaiList.sort((a, b) => a.nip.compareTo(b.nip));
  var hasil2 = binarySearchByNIP(pegawaiList, 102);
  print(hasil2?.nama ?? 'Tidak ditemukan');
}


// Contoh Sequential Search berdasarkan NIP
  //var hasil2 = cariPegawaiByNIP(pegawaiList, 102);
  //print('Hasil cari NIP: ${hasil2?.nama ?? 'Tidak ditemukan'}');
 // Contoh Sequential Search berdasarkan Nama
 // var hasil1 = cariPegawaiByNama(pegawaiList, 'Andi');
  //print('Hasil cari nama: ${hasil1?.alamat ?? 'Tidak ditemukan'}');


   
//}
