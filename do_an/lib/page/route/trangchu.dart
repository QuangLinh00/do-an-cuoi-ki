import 'package:flutter/material.dart';
import '../signin.dart';
import '../home.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 180, // Chiều cao của phần nền đỏ
              color: Colors.red,
            ),
            Column(
              children: [
                SizedBox(height: 100), // Đẩy WelcomeCard xuống vị trí phù hợp
                WelcomeCardComponent(),
                SizedBox(height: 10),
                RegisterCardComponent(),
                SizedBox(height: 20),
                SectionTitle(title: 'Dịch vụ'),
                ServiceIconsComponent(),
              ],
            ),
          ],
        ),
      ),
    );
      }
}

class LichKhamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Lịch khám")));
  }
}

class ThongBaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Thông báo")));
  }
}

class LichSuGDPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Lịch sử giao dịch")));
  }
}

class TaiKhoanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthPage();
  }
}


