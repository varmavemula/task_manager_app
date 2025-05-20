import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import '../models/task.dart';

class TaskService {
  static const String _taskClass = "Tasks"; // Table name in Back4App

  // ✅ Create Task
  Future<bool> createTask(String title, String description) async {
    final task = ParseObject(_taskClass)
      ..set("title", title)
      ..set("description", description);

    final response = await task.save();
    return response.success;
  }

  // ✅ Read Tasks
  Future<List<Task>> getTasks() async {
    final query = QueryBuilder(ParseObject(_taskClass));
    final response = await query.query();

    if (response.success && response.results != null) {
      return response.results!.map((e) => Task.fromParseObject(e)).toList();
    }
    return [];
  }

  // ✅ Update Task
  Future<bool> updateTask(String taskId, String title, String description) async {
    final task = ParseObject(_taskClass)
      ..objectId = taskId
      ..set("title", title)
      ..set("description", description);

    final response = await task.save();
    return response.success;
  }

  // ✅ Delete Task
  Future<bool> deleteTask(String taskId) async {
    final task = ParseObject(_taskClass)..objectId = taskId;
    final response = await task.delete();
    return response.success;
  }
}
