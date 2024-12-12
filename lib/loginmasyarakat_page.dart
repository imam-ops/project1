import 'package:flutter/material.dart';
import 'package:sippd/dasboardmasyarakat_page.dart';
import 'package:sippd/registermasyarakat_page.dart';

class LoginmasyarakatPage extends StatelessWidget {
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
            const SizedBox(height: 0),
            const Text(
              'Log In\nMasyarakat',
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold, color: Colors.red),
                  textAlign: TextAlign.center,
            ),
            const SizedBox(height: 0),
            const Text(
              'Sistem Informasi Pelayanan Publik Desa',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 32),
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
            const SizedBox(height: 16),
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
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Add forgot password functionality
                },
                child: const Text('Lupa Kata Sandi?'),
              ),
            ),
            const SizedBox(height: 8,),
            SizedBox(
              width: 200,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DasboardmasyarakatPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white
                ),
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 8,),
            SizedBox(
              width: 200,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white
                ),
                child: const Text('Login With Google'),
              ),
            ),
            const SizedBox(height: 8,),
            SizedBox(
              width: 200,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                ),
                child: const Text('Login With Facebook'),
              ),
            ),
            const SizedBox(height: 8,),
            SizedBox(
              width: 200,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white
                ),
                child: const Text('Login as Guest'),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Belum Punya Akun?'),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => RegistermasyarakatPage()));
                      // Add forgot password functionality
                    },
                    child: const Text('Register'),
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