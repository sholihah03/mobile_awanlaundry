import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 20), // Jarak antara status bar dan gambar logo
              Image.asset(
                'assets/images/logo.png',
                height: 100, // Sesuaikan tinggi gambar logo
              ),
              SizedBox(height: 20), // Jarak antara gambar logo dan teks
              Text(
                'Awan Laundry Express',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 10), // Jarak antara teks besar dan teks kecil
              Text(
                'Selamat Datang di Awan Laundry',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              // SizedBox(height: 3),
              Text(
                'Silahkan Masuk Dengan Akun Anda',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add login functionality here
                },
                child: Text('Sign In'),
              ),
              TextButton(
                onPressed: () {
                  // Add forgot password functionality here
                },
                child: Text('Lupa Password?'),
              ),
              SizedBox(height: 20),
              // Text('GOX!'),
              // SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add sign up functionality here
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
