import 'package:flutter/material.dart';
import 'account/dangki.dart';
import 'account/dangnhap.dart';


class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng nhập và Đăng ký'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Đăng nhập hoặc Đăng ký'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Đăng nhập'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text('Đăng ký'),
            ),
            SizedBox(height: 20),
            Text('Hoặc đăng nhập bằng:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {
                    // Xử lý đăng nhập bằng Facebook
                  },
                ),
                IconButton(
                  icon: Icon(Icons.mail),
                  onPressed: () {
                    // Xử lý đăng nhập bằng Gmail
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}