import 'package:flutter/material.dart';
import 'package:medikitappkwu/service/user_service.dart';
import 'antrian.dart';

class HomePage extends StatelessWidget {
  final userService = UserService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MediKita")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Selamat datang User……, Kesehatan anda adalah prioritas kami"),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text(userService.nama),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("No. Kartu: ${userService.noKartu}"),
                    Text("Alamat: ${userService.alamat}"),
                    Text("Lahir: ${userService.tanggalLahir}"),
                    Text("NIK: ${userService.nik}"),
                    Text("Faskes: ${userService.fasilitas}"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            userService.sudahMengatri
              ? Column(
                  children: [
                    ElevatedButton(onPressed: null, child: Text('Sudah Ambil Antrian')),
                    Text("Anda berada di antrian: ${userService.nomorAntrian}"),
                    Text("Estimasi waktu menunggu: 60 menit / 17.47"),
                  ],
                )
              : ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => AmbilAntrianPage()));
                  },
                  child: Text('Ambil Antrian'),
                ),
          ],
        ),
      ),
    );
  }
}
