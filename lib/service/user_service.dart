class UserService {
  static final UserService _instance = UserService._internal();
  factory UserService() => _instance;
  UserService._internal();

  // Data user
  String nama = 'Ezra Parisha';
  String noKartu = '090020313421';
  String alamat = 'Malang, Kelurahan Sawojajar';
  String tanggalLahir = '17 Agustus 1945';
  String nik = '009018297383482';
  String fasilitas = 'Elite Room';

  // Data antrian
  String? nomorAntrian;
  String? poli;
  String? rs;
  String? keluhan;

  bool get sudahMengatri => nomorAntrian != null;

  void ambilAntrian({
    required String nomor,
    required String poli,
    required String rs,
    required String keluhan,
  }) {
    this.nomorAntrian = nomor;
    this.poli = poli;
    this.rs = rs;
    this.keluhan = keluhan;
  }
}
