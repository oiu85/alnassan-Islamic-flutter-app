import 'package:flutter/material.dart';
import 'package:nassan_app/gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("information"),
              subtitle: Text("info test for the drawer option"),
            ),
          ],
        ),
      ),
      body: Center(child: Text("hello")),
    );
  }
}
