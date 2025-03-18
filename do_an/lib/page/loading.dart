import 'package:flutter/material.dart';


class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,243,0,5), // Nền đỏ
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/logo/logo1.png', // Đường dẫn logo
              width: 130, // Điều chỉnh kích thước logo
              height: 101,
            ),
            const SizedBox(height: 64), // Khoảng cách giữa logo và loading icon
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white), // Màu trắng
            ),
          ],
        ),
      ),
    );
  }
}