import 'package:flutter/material.dart';
import 'package:to_do_app/constant/color.dart';
import 'package:to_do_app/model/todo.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key, required this.todo, this.onToDoChanged, this.onDeleteItem});
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child:
      ListTile(
        onTap: (){
          print('Clicked on checkbox');
          onToDoChanged(todo);
        },
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(20),
        
        ),

        // Text
        contentPadding: EdgeInsets.symmetric(horizontal: 20,
        vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
        color: secondaryColor,),
        title: Text(todo.todoText!,style: TextStyle(
          fontSize: 20,
          color: textColor,
          decoration: todo.isDone? TextDecoration.lineThrough : null,
        ),
        
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(
            vertical: 12,
          ),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(5)
          ),
          child:IconButton(
            color: accentColor,
            iconSize: 18,

          
            onPressed: (){
              // print('delete');
              onDeleteItem(todo.id);

              
            }, icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}