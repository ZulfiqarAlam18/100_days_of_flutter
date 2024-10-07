class TaskModelClass {
  final int? id;
  final String title;
  final String des;

  TaskModelClass({
    this.id ,
    required this.title,
    required this.des,
});

  factory TaskModelClass.fromMap(Map map){
    return TaskModelClass(id:map['id'],title: map['title'], des: map['des']);
  }

  toMap() {
    return {
      'id' : id,
      'title': title,
      'des': des,
    };
  }
}