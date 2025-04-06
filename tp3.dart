class Pegawai {
  int nip;
  String nama;
  String alamat;
  String golongan;

  Pegawai({
    required this.nip,
    required this.nama,
    required this.alamat,
    required this.golongan,
  });
}

Pegawai? binarySearchByNIP(List<Pegawai> data, int nipDicari) {
  int low = 0;
  int high = data.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (data[mid].nip == nipDicari) {
      return data[mid];
    } else if (data[mid].nip < nipDicari) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return null;
}

// Fungsi Sequential Search berdasarkan Nama

//Pegawai? cariPegawaiByNIP(List<Pegawai> data, int nipDicari) {
  //for (var pegawai in data) {
    //if (pegawai.nip == nipDicari) {
      //return pegawai;
    //}
  //}
  //return null; // Tidak ditemukan
//}


