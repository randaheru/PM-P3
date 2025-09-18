void validasiInput(double tinggiCm, double beratKg) {
  if (tinggiCm <= 0 || beratKg <= 0) {
    throw Exception("Tinggi dan berat harus lebih dari 0");
  }
}