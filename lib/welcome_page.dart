import 'package:flutter/material.dart';
import 'package:sippd/loginadmin_page.dart';
import 'package:sippd/loginmasyarakat_page.dart';
import 'package:sippd/loginrtrw_page.dart';

class LoginPortal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '), centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 0),
            Image.asset(
              'assets/images/welcome1.png',
              width: 300,
              height: 160,
            ),
            SizedBox(height: 5),
            Text(
              'Portal Sistem Informasi Pelayanan Publik Desa',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Silahkan pilih halaman login sesuai dengan status masing-masing.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),

            SizedBox(height: 10),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginadminPage()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white
                  ),
                child: Text('Admin'),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginrtrwPage()));
                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white
                  ),
                child: Text('RT / RW'),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginmasyarakatPage()));

                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white
                  ),

                child: Text('Masyarakat'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
