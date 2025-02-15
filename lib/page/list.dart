// import 'package:flutter/material.dart';

// class List extends StatefulWidget {
//   const List({super.key});

//   @override
//   State<List> createState() => _List();
// }

// class _List extends State<List> {
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   body: TextField(
//     //     decoration: InputDecoration(
//     //       hintText: "Tìm kiếm...",
//     //       prefixIcon: Icon(Icons.search, color: Colors.grey), // Icon kính lúp
//     //       border: OutlineInputBorder(
//     //         borderRadius: BorderRadius.circular(8.0), // Bo góc
//     //         borderSide: BorderSide(color: Colors.grey), // Màu viền
//     //       ),
//     //       focusedBorder: OutlineInputBorder(
//     //         borderRadius: BorderRadius.circular(8.0),
//     //         borderSide:
//     //             BorderSide(color: Colors.blue, width: 2.0), // Màu khi focus
//     //       ),
//     //     ),
//     //   ),
//     // );
//     return DefaultTabController(
//       length: 5, // 5 loại sân
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Tìm kiếm sân thể thao"),
//           bottom: TabBar(
//             isScrollable: true, // Cho phép kéo ngang
//             indicatorColor: Colors.blue, // Màu khi chọn
//             tabs: [
//               Tab(text: "Sân bóng"),
//               Tab(text: "Sân cầu lông"),
//               Tab(text: "Sân Pickleball"),
//               Tab(text: "Sân bóng chuyền"),
//               Tab(text: "Sân bóng rổ"),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             Center(child: Text("Sân bóng")),
//             Center(child: Text("Sân cầu lông")),
//             Center(child: Text("Sân Pickleball")),
//             Center(child: Text("Sân bóng chuyền")),
//             Center(child: Text("Sân bóng rổ")),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class SportList extends StatefulWidget {
  const SportList({super.key});

  @override
  State<SportList> createState() => _SportListState();
}

class _SportListState extends State<SportList> {
  final List<Map<String, dynamic>> sportsFields = [
    {"name": "Sân bóng", "icon": Icons.sports_soccer},
    {"name": "Sân cầu lông", "icon": Icons.sports_tennis},
    {"name": "Sân Pickleball", "icon": Icons.sports_handball},
    {"name": "Sân bóng chuyền", "icon": Icons.sports_volleyball},
    {"name": "Sân bóng rổ", "icon": Icons.sports_basketball},
  ];

  int selectedIndex = 0; // Lưu index của sân được chọn

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            height: 50,
            margin: EdgeInsets.only(bottom: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sportsFields.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? Colors.blue[100]
                          : Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: [
                        Icon(sportsFields[index]["icon"], color: Colors.black),
                        SizedBox(width: 5),
                        Text(
                          sportsFields[index]["name"],
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Bạn đang chọn: ${sportsFields[selectedIndex]["name"]}",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SportList(),
  ));
}
