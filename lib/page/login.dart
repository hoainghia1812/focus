import 'package:flutter/material.dart';
import 'package:focus/page/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(168, 227, 252, 0.25),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 200,
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.close),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Text(
                              'Đăng nhập',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Theme(
                                data: ThemeData(
                                    colorScheme: ColorScheme.light(
                                        primary:
                                            Color.fromRGBO(0, 115, 177, 1.0))),
                                child: TextField(
                                  cursorColor: Color.fromRGBO(0, 115, 177, 1.0),
                                  decoration: InputDecoration(
                                      prefixIcon:
                                          const Icon(Icons.phone_outlined),
                                      labelText: 'Số điện thoại',
                                      border: const OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: const Color.fromRGBO(
                                                  0, 115, 177, 1.0),
                                              width: 2.0))),
                                )),
                            const SizedBox(height: 20),
                            Theme(
                              data: ThemeData(
                                colorScheme: ColorScheme.light(
                                  primary: Color.fromRGBO(0, 115, 177, 1.0),
                                ),
                              ),
                              child: StatefulBuilder(
                                builder: (context, setState) => TextField(
                                  cursorColor: Color.fromRGBO(0, 115, 177, 1.0),
                                  obscureText:
                                      isObscure, // Ẩn hoặc hiện mật khẩu
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.password_outlined,
                                        color:
                                            Color.fromRGBO(0, 115, 177, 1.0)),
                                    labelText: 'Nhập mật khẩu',
                                    border: OutlineInputBorder(),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        isObscure
                                            ? Icons.visibility_off
                                            : Icons
                                                .visibility, // Đổi icon khi nhấn
                                        color: Color.fromRGBO(0, 115, 177, 1.0),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isObscure =
                                              !isObscure; // Đảo trạng thái
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  // Xử lý sự kiện
                                },
                                child: Text(
                                  "Quên mật khẩu ?",
                                  style: TextStyle(
                                    fontSize: 16, // Điều chỉnh kích thước chữ
                                    fontWeight: FontWeight
                                        .bold, // Làm đậm chữ (tuỳ chọn)
                                    color: Color.fromRGBO(
                                        0, 115, 177, 1.0), // Màu chữ
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: 350, // Chiều rộng của nút
                              height: 45, // Chiều cao của nút
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF0073B1),
                                    Color(0xFF00AEEF)
                                  ], // Màu gradient
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius:
                                    BorderRadius.circular(8), // Bo góc
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Xử lý khi nhấn nút
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors
                                      .transparent, // Đặt màu nền trong suốt để giữ gradient
                                  shadowColor: Colors.transparent, // Bỏ bóng
                                  padding: EdgeInsets
                                      .zero, // Loại bỏ padding mặc định để gradient phủ toàn bộ nút
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Bo góc giống Container
                                  ),
                                ),
                                child: Text(
                                  "Đăng nhập",
                                  style: TextStyle(
                                    fontSize: 18, // Cỡ chữ
                                    fontWeight: FontWeight.bold, // In đậm
                                    color: Colors.white, // Màu chữ
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: 350, // Điều chỉnh chiều rộng theo nhu cầu
                              height: 45,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Xử lý sự kiện đăng nhập
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Đưa nội dung về bên trái
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10), // Đẩy logo sát bên trái
                                      child: Image.asset(
                                        "assets/images/google.png",
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left:
                                              70), // Khoảng cách giữa logo và chữ
                                      child: Text(
                                        "Đăng nhập với Google",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: double
                                  .infinity, // Để phù hợp với mọi màn hình
                              height: 45,
                              alignment: Alignment.center, // Căn giữa nội dung
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Bạn chưa có tài khoản?",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Register()));
                                    },
                                    child: Text(
                                      "Đăng ký",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Colors.blue, // Màu có thể tùy chỉnh
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
