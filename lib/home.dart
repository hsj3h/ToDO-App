import 'package:flutter/material.dart';
import 'package:to_do_app/constant/color.dart';
import '../model/todo.dart';
import 'package:to_do_app/widget/to_doitem.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDo.todoList();

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
       body:Stack(
         children: [
           Container
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
                      for (ToDo todo in todosList)
                      ToDoItem(todo:todo,
                      onToDoChanged:_handleToDoChange ,
                      onDeleteItem: (){},
                       ),
                      
           
                    ],
                  ),
                )
           
              ],
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(child: 
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                      left: 20
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      boxShadow: [BoxShadow(
                        color:Colors.grey,
                        offset: Offset(0.0,0.0),
                        blurRadius: 10,
                        spreadRadius: 0
                      )],
                      borderRadius: BorderRadius.circular(5,
                      )

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextField(
                        
                        decoration: InputDecoration(
                          hintText: 'Add a new todo item',
                          border: InputBorder.none,
                        
                        ),
                      ),
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20
                    ),
                    child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(60, 60),
                      elevation: 10
                       
                    ),
                    child: Text('+',
                    style: TextStyle(
                      fontSize: 40),
                      
                      )),
                  )
                ],
              ),
            )
         ],
       )
    );
  }
  void _handleToDoChange (ToDo todo){
    setState(() {
      todo.isDone =!todo.isDone;
    });
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


