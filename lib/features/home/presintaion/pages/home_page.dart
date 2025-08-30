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
      body: Column(
        children: [
          Card(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 2),
              width: double.infinity,
              child: Stack(
                textDirection: TextDirection.rtl,
              children: [
                Positioned(
                  top: -30,
                  left: -30,
                  child: Image.asset(Assets.images.circulerZh.path),
                ),

              ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
