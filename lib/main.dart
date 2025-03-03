import 'package:flutter/material.dart';
import 'package:sippd/berita_page.dart';
import 'package:sippd/dasboardmasyarakat_page.dart';
import 'package:sippd/homekades_page.dart';
import 'package:sippd/kk_page.dart';
import 'package:sippd/kkbaru_page.dart';
import 'package:sippd/konsulasi_page.dart';
import 'package:sippd/permohonan_page.dart';
import 'package:sippd/pndaftaran_page.dart';
import 'package:sippd/upload_page.dart';
import 'package:sippd/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/admin/admin_dashboard.dart';
import 'screens/auth/login_screen.dart';
import 'screens/user/user_dashboard.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          if (snapshot.hasData) {
            return FutureBuilder<DocumentSnapshot>(
              future: FirebaseFirestore.instance
                  .collection('users')
                  .doc(snapshot.data!.uid)
                  .get(),
              builder: (context, userSnapshot) {
                if (userSnapshot.connectionState ==
                    ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (userSnapshot.hasData && userSnapshot.data!.exists) {
                  final userData =
                  userSnapshot.data!.data() as Map<String, dynamic>;
                  return userData['role'] == 'admin'
                      ? AdminDashboard()
                      : UserDashboard();
                }
                return LoginScreen();
              },
            );
          }
          return LoginScreen();
        },
      ),
    );
  }
}

