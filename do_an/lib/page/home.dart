import 'package:flutter/material.dart';
import 'register.dart';
import 'route/dichvu.dart';
import 'route/trangchu.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPage = 0; // Chỉ mục của trang hiện tại

  final List<Widget> _pages = [
    Homepage(),
    LichKhamPage(),
    ThongBaoPage(),
    LichSuGDPage(),
    TaiKhoanPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentPage], // Hiển thị trang hiện tại

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index; // Cập nhật chỉ mục trang
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Lịch khám',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Thông báo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Lịch sử GD',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Tài khoản',
          ),
        ],
      ),
    );
  }
}


class WelcomeCardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
         border: Border.all(
            color: Colors.grey, // Border color
            width: 1, // Border width
          ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/logo/logo.png', width: 40, height: 40),
              SizedBox(width: 10),
              Text('Medi xin chào', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ],
          ),
          Divider(),
          Text('Bạn chưa đăng nhập', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red)),
          Text('Hãy đăng kí tài khoản để bắt đầu trải nghiệm', style: TextStyle(fontSize: 14)),
          Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.arrow_forward, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class RegisterCardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterPage()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.all(10),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Đăng ký khám bệnh',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            Icon(Icons.arrow_forward, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
class ServiceIconsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, 
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        children: [
          ServiceItem(image: 'assets/icon1.png', label: 'thông tin khám bệnh', page: ThongTinKhamBenhScreen()),
          ServiceItem(image: 'assets/icon2.png', label: 'thanh toán viện phí', page: ThanhToanVienPhiScreen()),
          ServiceItem(image: 'assets/icon3.png', label: 'quản lý thẻ', page: QuanLyTheScreen()),
          ServiceItem(image: 'assets/icon4.png', label: 'quản lý hồ sơ', page: QuanLyHoSoScreen()),
          ServiceItem(image: 'assets/icon7.png', label: 'lịch tái khám', page: LichTaiKhamScreen()),
          ServiceItem(image: 'assets/icon8.png', label: 'hóa đơn điện tử', page: HoaDonDienTuScreen()),
          ServiceItem(image: 'assets/icon5.png', label: 'hotline', page: HotlineScreen()),
          ServiceItem(image: 'assets/icon6.png', label: 'tư vấn 24/7', page: TuVanScreen()),
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String image;
  final String label;
  final Widget page;

  ServiceItem({required this.image, required this.label, required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Column(
        
        children: [
          Image.asset(image, width: 50, height: 50),
          SizedBox(height: 5),
          Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}





class TabBarComponent extends StatefulWidget {
  @override
  _TabBarComponentState createState() => _TabBarComponentState();
}

class _TabBarComponentState extends State<TabBarComponent> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Điều hướng đến các trang khác nhau khi nhấn vào
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Homepage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LichKhamPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ThongBaoPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LichSuGDPage()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TaiKhoanPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Lịch khám'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Thông báo'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Lịch sử GD'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Tài khoản'),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}
