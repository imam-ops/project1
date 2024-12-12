import 'package:flutter/material.dart';

class PndaftaranPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications button press
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Handle profile button press
            },
          ),
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              '2. Pendaftaran',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Isian Form',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'NIK Pemohon',
                hintText: 'Masukan NIK Pemohon',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama Pemohon',
                hintText: 'Masukan Nama Pemohon',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'No. HP Pemohon',
                hintText: 'Masukan No. HP Pemohon',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'NIK Diproses',
                hintText: 'Masukan NIK yang diproses',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama Diproses',
                hintText: 'Masukan Nama yang diproses',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Elemen Data Kunci',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'No. KK',
                hintText: 'Masukan No. KK',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'NIK',
                hintText: 'Masukan NIK',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama',
                hintText: 'Masukan Nama',
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle the next button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text('Selanjutnya'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
