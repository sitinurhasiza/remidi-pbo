void main() {
  // 1. Operator: Aritmatika dan Perbandingan
  int anggota = 45;
  int latihanHariIni = 20;
  int totalLatihan = anggota + latihanHariIni; // Penjumlahan
  bool latihanCukup = totalLatihan >= 60; // Perbandingan
  print('Total latihan anggota dan tambahan hari ini: $totalLatihan, Cukup? $latihanCukup');
  
  // 2. List: Daftar nama anggota Paskibra
  List<String> paskibra = ['Eskel', 'Wanca', 'Nabil'];
  paskibra.add('Nabila'); // Menambah anggota baru
  print('Anggota Paskibra: $paskibra');

  // 3. Set: Set unik untuk posisi barisan
  Set<String> posisiBarisan = {'Pasukan 17', 'Pasukan 8', 'Pasukan 45'};
  posisiBarisan.add('Danton'); // Menambah posisi baru
  print('Posisi dalam barisan: $posisiBarisan');
  
  // 4. Map: Map untuk mencatat nilai tiap anggota
  Map<String, int> nilaiLatihan = {
    'Ikka': 85,
    'Musda': 90,
    'Ikki': 88,
  };
  nilaiLatihan['Pampang'] = 92; // Menambah nilai anggota baru
  print('Nilai latihan anggota: $nilaiLatihan');
  
  // 5. Simbol: Simbol untuk peran penting
  Symbol komandan = #Danton;
  print('Simbol peran: $komandan');
  
  // 6. Percabangan: Memeriksa kelayakan barisan
  if (totalLatihan > 50) {
    print('Barisan siap untuk upacara!');
  } else if (totalLatihan == 50) {
    print('Barisan hampir siap.');
  } else {
    print('Barisan butuh lebih banyak latihan.');
  }
  
  // 7. Perulangan: Menampilkan nama-nama anggota Paskibra
  for (var anggota in paskibra) {
    print('Anggota: $anggota');
  }

  // 8. Fungsi dengan parameter opsional: Menampilkan hasil latihan
  void tampilkanNilai(String nama, {int nilai = 0}) {
    print('Nilai latihan $nama: $nilai');
  }
  tampilkanNilai('Hasiza', nilai: 85);
  tampilkanNilai('Tiwi');
  
  // 9. Inner Function: Fungsi untuk mengelola latihan
  void kelolaLatihan() {
    void pengingatLatihan() {
      print('Jangan lupa latihan setiap hari untuk tujuh belasan!');
    }
    pengingatLatihan(); // Memanggil inner function
  }
  kelolaLatihan();
  
  // 10. Fungsi dengan nilai balik: Menghitung total kehadiran
  int hitungKehadiran(int hadir, int absen) {
    return hadir - absen;
  }
  int kehadiranTotal = hitungKehadiran(50, 5);
  print('Total kehadiran: $kehadiranTotal');
  
  // 11. Fungsi singkat: Menghitung sisa latihan
  int sisaLatihan(int total, int sudahLatihan) => total - sudahLatihan;
  int latihanTersisa = sisaLatihan(10, 4);
  print('Latihan tersisa: $latihanTersisa');
  
  // 12. Fungsi anonim & scope: Mengalikan nilai latihan untuk evaluasi
  List<int> nilaiAnggota = [85, 90, 88, 92];
  var nilaiEvaluasi = nilaiAnggota.map((nilai) {
    return nilai * 2;
  }).toList();
  print('Nilai evaluasi: $nilaiEvaluasi');
  
  // 13. Closure: Fungsi untuk menambah skor latihan
  Function buatPenambahSkor(int tambahan) {
    return (int skor) {
      return skor + tambahan;
    };
  }
  var tambahBonus = buatPenambahSkor(10); // Closure menambah bonus 10 poin
  print('Nilai setelah bonus: ${tambahBonus(85)}');
}
