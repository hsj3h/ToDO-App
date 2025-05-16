import 'package:flutter/material.dart';
import 'package:to_do_app/constant/color.dart';
import 'package:to_do_app/widget/to_doitem.dart';

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
       body:Container
       (padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15
       ),
        child: Column(
          children: [
            SearchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50,bottom: 20),
                    child: Text("All todos",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                  ToDoItem(),
                  

                ],
              ),
            )

          ],
        ))
    );
  }
}
Widget SearchBox (){
  return Container(
        child: Container(
              padding:EdgeInsets.symmetric(horizontal: 15) ,
              decoration: BoxDecoration(
                color:primaryColor,
                borderRadius: BorderRadius.circular(20),
                

              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: textColor,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 20,
                    maxWidth:20
                  ),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: textColor
                  )
                ),
              ),
            )
       );
}