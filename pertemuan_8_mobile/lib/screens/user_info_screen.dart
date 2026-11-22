import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Akun Firebase'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(Icons.verified_user, color: Colors.white, size: 48),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Login Berhasil\nData diambil dari Firebase Authentication',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ) 
                      )
                  ],
                ),
                ),
            )
          ],
        ),
        ),
    );
  }
}