import 'package:flutter/material.dart';





class RegisterPage extends StatefulWidget {
  @override
  _RegisterPage createState() =>  _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  String? selectedHospital;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn bệnh viện'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Vui lòng chọn bệnh viện phù hợp với bạn',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _hospitalOption(
              'Bệnh viện Thống Nhất',
              'Số 1 Lý Thường Kiệt, Phường 7, Quận Tân Bình, TP Hồ Chí Minh',
              'assets/logo/thongnhat.png', 
              context,
            ),
            _hospitalOption(
              'Bệnh viện Chợ Rẫy',
              'Số 201B Nguyễn Chí Thanh, Phường 12, Quận 5, TP Hồ Chí Minh',
              'assets/logo/choray.png',
              context,
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
              ),
              onPressed: selectedHospital != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExaminationTypePage(hospitalName: selectedHospital!),
                        ),
                      );
                    }
                  : null,
              child: Text(
                'Tiếp tục',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _hospitalOption(
      String name, String address, String logoPath, BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedHospital = name;
        });
      },
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedHospital == name ? Colors.red : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(logoPath, width: 50, height: 50),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    address,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ExaminationTypePage extends StatefulWidget {
  final String hospitalName;

  ExaminationTypePage({required this.hospitalName});

  @override
  _ExaminationTypePageState createState() => _ExaminationTypePageState();
}

class _ExaminationTypePageState extends State<ExaminationTypePage> {
  String? selectedType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.hospitalName),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Vui lòng chọn hình thức khám phù hợp với bạn',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _examinationOption('Khám mới', 'assets/khammoi.png'),
            _examinationOption('Tái khám', 'assets/taikham.png'),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedType != null ? Colors.red : Colors.grey,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
              ),
              onPressed: selectedType != null ? () {} : null,
              child: Text(
                'Tiếp tục',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _examinationOption(String name, String iconPath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedType = name;
        });
      },
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedType == name ? Colors.red : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(iconPath, width: 50, height: 50),
            SizedBox(width: 12),
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
class ExaminationCategoryPage extends StatelessWidget {
  final String hospitalName;
  final String examinationType;

  ExaminationCategoryPage({required this.hospitalName, required this.examinationType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$hospitalName - $examinationType'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          'Tiếp tục với $examinationType tại $hospitalName',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
