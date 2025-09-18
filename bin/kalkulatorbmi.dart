void validasiInput(double tinggiCm, double beratKg) {
  if (tinggiCm <= 0 || beratKg <= 0) {
    throw Exception("Tinggi dan berat harus lebih dari 0");
  }
}

Map<String, dynamic> hitungBMI(double tinggiCm, double beratKg) {
  // Validasi input
  validasiInput(tinggiCm, beratKg);

  // Konversi tinggi cm ke m
  double tinggiM = tinggiCm / 100;

  // Hitung BMI
  double bmi = beratKg / (tinggiM * tinggiM);

  // Tentukan kategori
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  return {
    'tinggi': tinggiCm,
    'berat': beratKg,
    'bmi': bmi,
    'kategori': kategori,
  };
}

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  for (var item in riwayat) {
    print("Tinggi: ${item['tinggi']} cm, "
        "Berat: ${item['berat']} kg, "
        "BMI: ${item['bmi'].toStringAsFixed(2)}, "
        "Kategori: ${item['kategori']}");
  }
}

void main() {
  List<Map<String, dynamic>> riwayat = [];

  // Simulasi input
  riwayat.add(hitungBMI(170, 65));
  riwayat.add(hitungBMI(165, 75));
  riwayat.add(hitungBMI(180, 85));

  // Tampilkan riwayat
  tampilkanRiwayat(riwayat);
}
