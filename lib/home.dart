import 'package:flutter/material.dart';
import 'package:to_do_app/constant/color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu,
          color: primaryColor,
          size: 30,
          ),
          SizedBox(
            height: 40,
            width: 30,
            child: ClipRRect(
            child:Image.asset("assets/avatar.jpg") ,
            ),
          )
        ],
      ),
      backgroundColor: backgroundColor,
      
       ),
       body: Container(
        child: Text('This is home screen'),
       ),
    );
  }
}