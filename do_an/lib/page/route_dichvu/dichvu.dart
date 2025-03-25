import 'package:flutter/material.dart';
// ================== Các màn hình (screens) ==================

class ThongTinKhamBenhScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Thông tin khám bệnh")), body: Center(child: Text("Trang Thông tin khám bệnh")));
  }
}

class ThanhToanVienPhiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Thanh toán viện phí")), body: Center(child: Text("Trang Thanh toán viện phí")));
  }
}

class QuanLyTheScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Quản lý thẻ")), body: Center(child: Text("Trang Quản lý thẻ")));
  }
}

class QuanLyHoSoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Quản lý hồ sơ")), body: Center(child: Text("Trang Quản lý hồ sơ")));
  }
}

class LichTaiKhamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Lịch tái khám")), body: Center(child: Text("Trang Lịch tái khám")));
  }
}

class HoaDonDienTuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Hóa đơn điện tử")), body: Center(child: Text("Trang Hóa đơn điện tử")));
  }
}

class HotlineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Hotline")), body: Center(child: Text("Trang Hotline")));
  }
}

class TuVanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Tư vấn 24/7")), body: Center(child: Text("Trang Tư vấn 24/7")));
  }
}