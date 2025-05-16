import 'package:flutter/material.dart';
import 'package:to_do_app/constant/color.dart';
import 'package:to_do_app/constant/searchbox.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: _buildAppBar(),
       body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [
           Searchbox(),
           ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 50,
                  bottom: 20
                ),
                child: 
                Text("all to do"),
                
              )
            ],
           )
          ],
        )

       ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(title:
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
          // child:Image.asset("assets/avatar.jpg") ,
          borderRadius: BorderRadius.circular(20),
          ),
        )
      ],
    ),
    backgroundColor: backgroundColor,
    elevation: 0,
    
     );
  }
}