import 'package:flutter/material.dart';
import 'package:sippd/akun_page.dart';
import 'package:sippd/berita_page.dart';
import 'package:sippd/kia_page.dart';
import 'package:sippd/kk_page.dart';
import 'package:sippd/kkbaru_page.dart';
import 'package:sippd/konsulasi_page.dart';
import 'package:sippd/ktp_page.dart';
import 'package:sippd/permohonan_page.dart';

class DasboardmasyarakatPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dasboard',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton( icon:
          Icon(Icons.phone),
            onPressed: () {},
          ), ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.black54],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20,100, 0, 0),
              child: Row(
                children: [
                  SizedBox(height: 10, width: 10),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Datang',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Sistem Informasi Pelayanan Publik Desa / Kelurahan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )
                      ]
                  ),
                ],
              ),
            ),
            SizedBox(height: 0,),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.search)
                ),
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(5),
                  ),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Daftar Menu',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness:1,color: Colors.grey),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        padding: EdgeInsets.all(0),
                        children: [
                          _buildElevatedButton(context, Icons.file_present, 'Kartu Keluarga', ),
                          _buildElevatedButton(context, Icons.credit_card_outlined, 'KTP'),
                          _buildElevatedButton(context, Icons.credit_card_outlined, 'KIA'),
                          _buildElevatedButton(context, Icons.file_present, 'Akta Kelahiran'),
                          _buildElevatedButton(context, Icons.file_present, 'Akta Kematian'),
                          _buildElevatedButton(context, Icons.file_present, 'SKTM Pend'),
                          _buildElevatedButton(context, Icons.file_present, 'SKTM Kes'),
                          _buildElevatedButton(context, Icons.file_present, 'Ket. SKCK'),
                          _buildElevatedButton(context, Icons.file_present, 'Ket. Kehilangan'),
                          _buildElevatedButton(context, Icons.file_present, 'Ket. Domisili'),
                          _buildElevatedButton(context, Icons.file_present, 'Ket. Usaha'),
                          _buildElevatedButton(context, Icons.file_present, 'Ket. Belum\nMenikah'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.file_present,color: Colors.red,),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PermohonanPage())
                  );
                },
              ),
              label: 'Permohonan',
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.chat,color: Colors.red,),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KonsulasiPage())
                  );
                },
              ),
              label: 'Konsultasi',
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home,color: Colors.red,),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DasboardmasyarakatPage())
                  );
                },
              ),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.newspaper,color: Colors.red,),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BeritaPage())
                  );
                },
              ),
              label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.account_box,color: Colors.red,),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AkunPage())
                );
              },
            ),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
  Widget _buildElevatedButton(BuildContext context, IconData icon, String label) {
    return ElevatedButton(
      onPressed: () {
        Widget tj = Container();
        switch (label) {
          case 'Kartu Keluarga':
              tj = KkPage();
              break;
            case 'KTP':
              tj = KtpPage();
              break;
            case 'KIA':
              tj = KiaPage();
              break;
            default:
          }
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => tj),
        );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white70,
          side: BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 31),
            SizedBox(height: 0),
            Text(label, style: TextStyle(fontSize: 16)),
          ],
        ),

    );}
}
