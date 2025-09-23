import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';

import '../../../../gen/assets.gen.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الكتب والمؤلفات'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Card(
            child: Row(
              children: [
                Image.asset(Assets.images.books.path),
                SizedBox(width:  10,),
                Column(
                  children: [
                    Text("book title"), //Todo : add book title
                    Row(
                      children: [
                        Icon(Icons.calendar_month_outlined, color: AppColors.primary,),
                        SizedBox(width: 3,),
                        Text("date"), //Todo : add date
                        Icon(Icons.remove_red_eye, color: AppColors.primary,),
                        SizedBox(width: 3,),
                        Text("views"), //Todo : add views
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
