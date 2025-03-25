import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Wrap(
            children: [
              Container(
                height: 250, // Chiều cao của background màu đỏ
                color: Colors.red,
              ),
              Positioned(
                top: 200, // Vị trí top của Welcome Card (250 - 50)
                left: 0,
                right: 0,
                child: WelcomeCardComponent(),
              ),
            ],
          ),
           SizedBox(height: 50),
          // WelcomeCardComponent(),
          SizedBox(height: 10),
          RegisterCardComponent(),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SectionTitle(title: 'Dịch vụ'),
                  ServiceIconsComponent(),
                  ContactOptionsComponent(),
                ],
              ),
            ),
          ),
          TabBarComponent(),
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
        color: const Color.fromARGB(255, 255, 255, 255), 
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(5),
                child: Image.asset('assets/logo/logo.png', width: 30, height: 30),
              ),
              SizedBox(width: 10),
              Text('Medi xin chào', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black)),
            ],
          ),
          Divider(),
          Text('Bạn chưa đăng nhập', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
          Text('Hãy đăng kí tài khoản để bắt đầu trải nghiệm', style: TextStyle(fontSize: 14, color: Colors.black)),
          Align(
            alignment: Alignment.centerRight,
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
    return Container(
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
          Image.asset('assets/logo/logo2.png', width: 50, height: 50),
          Text('Đăng ký khám bệnh', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }
}

class ServiceIconsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      children: [
        ServiceItem(image: '../info.png', label: 'thông tin khám bệnh'),
        ServiceItem(image: '../payment.png', label: 'thanh toán viện phí'),
        ServiceItem(image: '../card.png', label: 'quản lý thẻ'),
        ServiceItem(image: '../record.png', label: 'quản lý hồ sơ'),
        ServiceItem(image: '../schedule.png', label: 'lịch tái khám'),
        ServiceItem(image: '../invoice.png', label: 'hóa đơn điện tử'),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String image;
  final String label;

  ServiceItem({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, width: 50, height: 50),
        SizedBox(height: 5),
        Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}

class ContactOptionsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ContactItem(image: '../hotline.png', label: 'hotline'),
        ContactItem(image: '../support.png', label: 'tư vấn 24/7'),
      ],
    );
  }
}

class ContactItem extends StatelessWidget {
  final String image;
  final String label;

  ContactItem({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, width: 50, height: 50),
        SizedBox(height: 5),
        Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}

class TabBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
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
