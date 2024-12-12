import 'package:flutter/material.dart';

class KtprdataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perubahan Data'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Cek Kelengkapan Persyaratan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            RequirementItem(
              text: 'KK Asli',
              isChecked: false,
            ),
            RequirementItem(
              text: 'KTP Asli',
              isChecked: false,
            ),
            RequirementItem(
              text: 'Buku Nikah',
              isChecked: false,
            ),
            RequirementItem(
              text: 'Akta Kelahiran',
              isChecked: false,
            ),RequirementItem(
              text: 'Ijazah',
              isChecked: false,
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
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
            ),
          ],
        ),
      ),
    );
  }
}

class RequirementItem extends StatelessWidget {
  final String text;
  final bool isChecked;

  RequirementItem({required this.text, required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            // Handle checkbox change
          },
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
