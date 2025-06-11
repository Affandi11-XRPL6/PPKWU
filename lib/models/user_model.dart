class UserModel {
  final String nama;
  final String noKartu;
  final String alamat;
  final String tanggalLahir;
  final String nik;
  final String fasilitas;
  String? nomorAntrian;
  String? poli;
  String? rs;
  String? keluhan;

  UserModel({
    required this.nama,
    required this.noKartu,
    required this.alamat,
    required this.tanggalLahir,
    required this.nik,
    required this.fasilitas,
    this.nomorAntrian,
    this.poli,
    this.rs,
    this.keluhan,
  });

  bool get sudahMengatri => nomorAntrian != null;
}

