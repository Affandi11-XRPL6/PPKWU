import 'package:flutter/material.dart';
import 'package:medikitappkwu/service/user_service.dart';
import 'antrian_berhasil.dart';

class AmbilAntrianPage extends StatefulWidget {
  @override
  _AmbilAntrianPageState createState() => _AmbilAntrianPageState();
}

class _AmbilAntrianPageState extends State<AmbilAntrianPage> {
  final namaController = TextEditingController();
  final poliController = TextEditingController();
  final rsController = TextEditingController();
  final keluhanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ambil Antrian')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            TextField(controller: namaController, decoration: InputDecoration(labelText: 'Nama')),
            TextField(controller: poliController, decoration: InputDecoration(labelText: 'Pilih Poli')),
            TextField(controller: rsController, decoration: InputDecoration(labelText: 'RS Tujuan')),
            TextField(controller: keluhanController, decoration: InputDecoration(labelText: 'Keluhan')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                UserService().ambilAntrian(
                  nomor: 'u32',
                  poli: poliController.text,
                  rs: rsController.text,
                  keluhan: keluhanController.text,
                );
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => AntrianBerhasilPage()));
              },
              child: Text('Ambil Antrian'),
            )
          ],
        ),
      ),
    );
  }
}
