import 'package:flutter/material.dart';
import 'package:medikitappkwu/service/user_service.dart';
import 'home_view.dart';

class AntrianBerhasilPage extends StatelessWidget {
  final userService = UserService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Antrian Berhasil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nomor: ${userService.nomorAntrian}", style: TextStyle(fontSize: 20)),
            Text("Nama: ${userService.nama}"),
            Text("Poli: ${userService.poli}"),
            Text("RS: ${userService.rs}"),
            Text("Keluhan: ${userService.keluhan}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: Text('Kembali ke Beranda'),
            ),
          ],
        ),
      ),
    );
  }
}
