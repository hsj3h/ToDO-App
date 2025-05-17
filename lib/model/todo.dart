
class ToDo{

  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false

    

  });

  static List<ToDo> todoList(){
    return[
      ToDo(id: '01',todoText:'Mornin excercise',isDone:true),
      ToDo(id: '02',todoText:'Buy groceries',isDone:true),
      ToDo(id: '03',todoText:'Check mails'),
      ToDo(id: '04',todoText:'flutter'),
      ToDo(id: '05',todoText:'dinner')
    ];
  }

}
