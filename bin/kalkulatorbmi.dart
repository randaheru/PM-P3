void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  for (var item in riwayat) {
    print("Tinggi: ${item['tinggi']} cm, "
          "Berat: ${item['berat']} kg, "
          "BMI: ${item['bmi'].toStringAsFixed(2)}, "
          "Kategori: ${item['kategori']}");
  }
}