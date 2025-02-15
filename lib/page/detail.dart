import 'package:flutter/material.dart';
import '../model/user.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    TextStyle mystyle = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.amber,
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Fullname: ${user.fullname}", style: mystyle),
            Text("Email: ${user.email}", style: mystyle),
            Text("Gender : ${user.password}", style: mystyle),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
