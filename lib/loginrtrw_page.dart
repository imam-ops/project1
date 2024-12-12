import 'package:flutter/material.dart';
import 'package:sippd/dasboardmasyarakat_page.dart';
import 'package:sippd/registerrtrw_page.dart';

class LoginrtrwPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 0),
            Text(
              'Log In\nKetua RT dan Ketua RW',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.red),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 0),
            Text(
              'Sistem Informasi Pelayanan Publik Desa',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Masukkan Email',
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Masukkan Password',
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Add forgot password functionality
                    },
                    child: Text('Lupa Kata Sandi?'),
                  ),
                ),
                SizedBox(height: 8,),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DasboardmasyarakatPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white
                    ),
                    child: Text('Login'),
                  ),
                ),
                SizedBox(height: 8,),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white
                    ),
                    child: Text('Login With Google'),
                  ),
                ),
                SizedBox(height: 8,),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white
                    ),
                    child: Text('Login With Facebook'),
                  ),
                ),
                SizedBox(height: 8,),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white
                    ),
                    child: Text('Login as Guest'),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Belum Punya Akun?'),
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterrtrwPage()));
                          // Add forgot password functionality
                        },
                        child: Text('Register'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
  }
}