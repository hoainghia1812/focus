import 'package:flutter/material.dart';
import './page/defaulwidget.dart';
import './page/account.dart';
import './page/list.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _loadWidget(int index) {
    var nameWidgets = "Danh sách";
    switch (index) {
      case 0:
        return const SportList();
      case 1:
        nameWidgets = "Dịch vụ";
        break;
      case 2:
        nameWidgets = "Ưu đãi";
        break;
      case 3:
        // nameWidgets = "Tài khoản";
        // break;
        return const Account();
      default:
        nameWidgets = "None";
        break;
    }
    return DefaultWidget(title: nameWidgets);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("My App Navigator"),
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       DrawerHeader(
      //         decoration: const BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: const [
      //             CircleAvatar(
      //               radius: 40,
      //               backgroundImage: NetworkImage(
      //                   'https://googleflutter.com/sample_image.jpg'),
      //             ),
      //             SizedBox(
      //               height: 8,
      //             ),
      //             Text('HoaiNghia'),
      //             Text('22dh112375@huflit.edu.vn'),
      //           ],
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text('Danh sách'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           _selectedIndex = 0;
      //           setState(() {});
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.contact_mail),
      //         title: const Text('Dịch vụ'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           _selectedIndex = 1;
      //           setState(() {});
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.supervised_user_circle),
      //         title: const Text('Ưu đãi'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           _selectedIndex = 2;
      //           setState(() {});
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.person),
      //         title: const Text('Tài khoản'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           _selectedIndex = 3;
      //           setState(() {});
      //         },
      //       ),
      //       const Divider(
      //         color: Colors.black,
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.exit_to_app),
      //         title: const Text('Đăng xuất'),
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: 'Danh sách',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dịch vụ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),
            label: 'Ưu đãi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Tài khoản',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 0, 115, 177),
        unselectedItemColor: const Color.fromARGB(255, 100, 100, 100),
        onTap: _onItemTapped,
      ),
      body: _loadWidget(_selectedIndex),
    );
  }
}
