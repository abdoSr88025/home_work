import '../models/task_model.dart';

class TaskData {
  final List<TaskModel> tasks = [];

  void addTask(String title) {
    tasks.add(TaskModel(title: title));
  }

  void toggleDone(int index) {
    tasks[index].isDone = !tasks[index].isDone;
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }
}
