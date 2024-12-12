import 'package:flutter/material.dart';

class HomekadesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIPPD'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.red),
            onPressed: () {
              // Handle notification action
            },
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.red),
            onPressed: () {
              // Handle profile action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukkan Nomor Antrian',
                labelStyle: TextStyle(color: Colors.red),
                suffixIcon: ElevatedButton(
                  onPressed: () {
                    // Handle search action
                  },
                  child: Text('Cari'),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  DataTable(
                    columns: [
                      DataColumn(label: Text('No. Antrian', style: TextStyle(color: Colors.red))),
                      DataColumn(label: Text('Layanan', style: TextStyle(color: Colors.red))),
                      DataColumn(label: Text('Nama Pemohon', style: TextStyle(color: Colors.red))),
                      DataColumn(label: Text('Status Proses', style: TextStyle(color: Colors.red))),
                      DataColumn(label: Text('Berkas Upload', style: TextStyle(color: Colors.red))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('0456')),
                        DataCell(Text('KK Hilang')),
                        DataCell(Text('Toni Romando')),
                        DataCell(Text(
                          'Belum Diproses',
                          style: TextStyle(color: Colors.red),
                        )),
                        DataCell(Row(
                          children: [
                            Icon(Icons.check, color: Colors.red),
                            Icon(Icons.check, color: Colors.green),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('0456')),
                        DataCell(Text('KK Hilang')),
                        DataCell(Text('Toni Romando')),
                        DataCell(Text(
                          'Validasi',
                          style: TextStyle(color: Colors.red),
                        )),
                        DataCell(Row(
                          children: [
                            Icon(Icons.check, color: Colors.red),
                            Icon(Icons.check, color: Colors.green),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('0456')),
                        DataCell(Text('KK Hilang')),
                        DataCell(Text('Toni Romando')),
                        DataCell(Text(
                          'Proses TTE',
                          style: TextStyle(color: Colors.orange),
                        )),
                        DataCell(Row(
                          children: [
                            Icon(Icons.check, color: Colors.red),
                            Icon(Icons.check, color: Colors.green),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('6234')),
                        DataCell(Text('KTA Baru')),
                        DataCell(Text('Toni Romando')),
                        DataCell(Text(
                          'Sudah Cetak',
                          style: TextStyle(color: Colors.green),
                        )),
                        DataCell(Row(
                          children: [
                            Icon(Icons.check, color: Colors.red),
                            Icon(Icons.check, color: Colors.green),
                          ],
                        )),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle FAB action
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment, color: Colors.red),
            label: 'Layanan',
            activeIcon: Text('Layanan', style: TextStyle(color: Colors.red)),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.assignment, color: Colors.red),
            label: 'Layanan',
            activeIcon: Text('Layanan', style: TextStyle(color: Colors.red)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.red),
            label: 'Konsultasi',
            activeIcon: Text('Konsultasi', style: TextStyle(color: Colors.red)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article, color: Colors.red),
            label: 'Berita',
            activeIcon: Text('Berita', style: TextStyle(color: Colors.red)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.red),
            label: 'Profil',
            activeIcon: Text('Profil', style: TextStyle(color: Colors.red)),
          ),
        ],
        currentIndex: 0, // Set the initial selected item
        onTap: (index) {
          // Handle bottom navigation bar item taps
        },
      ),
    );
  }
}