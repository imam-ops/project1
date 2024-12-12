import 'package:flutter/material.dart';

class BeritaPage extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            NewsItem(
              title: 'Percepatan Rekam IKD',
              description: 'Percepatan perekaman IKD bisa dilakukan di tingkat kelurahan/desa.',
            ),
            SizedBox(height: 16),
            NewsItem(
              title: 'Percepatan Rekam IKD',
              description: 'Percepatan perekaman IKD bisa dilakukan di tingkat kelurahan/desa.',
            ),
            SizedBox(height: 16),
            NewsItem(
              title: 'Percepatan Rekam IKD',
              description: 'Percepatan perekaman IKD bisa dilakukan di tingkat kelurahan/desa.',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Layanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Konsultan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final String title;
  final String description;

  NewsItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(description),
        ],
      ),
    );
  }
}
