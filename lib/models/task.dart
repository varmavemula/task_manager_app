class Task {
  String? id;
  String title;
  String description;

  Task({this.id, required this.title, required this.description});

  // Convert Parse Object to Task
  factory Task.fromParseObject(dynamic object) {
    return Task(
      id: object.get<String>('objectId'),
      title: object.get<String>('title') ?? '',
      description: object.get<String>('description') ?? '',
    );
  }
}
