import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/task.dart';

final taskListProvider = StateNotifierProvider<TaskListNotifier, List<Task>>((ref) {
  return TaskListNotifier();
});

class TaskListNotifier extends StateNotifier<List<Task>> {
  TaskListNotifier() : super([]);

  void addTask(Task task) {
    state = [...state, task];
  }

  void toggleTaskStatus(String id) {
    state = state.map((task) {
      if (task.id == id) {
        return task.copyWith(status: !task.status, updatedAt: DateTime.now());
      }
      return task;
    }).toList();
  }

  void toggleTaskFavourite(String id) {
    // **Modification:** Use a dedicated 'delete' property for deletion
    state = state.map((task) {
      if (task.id == id) {
        return task.copyWith(delete: !task.delete, updatedAt: DateTime.now());
      }
      return task;
    }).toList();
  }

  // **New Function:** Implement removeTask to actually delete an item
  void removeTask(String id) {
    state = state.where((task) => task.id != id).toList();
  }
}

final incompletedTaskProvider = Provider<List<Task>>((ref) {
  final tasks = ref.watch(taskListProvider);
  return tasks.where((task) => !task.status).toList();
});

final completedTaskProvider = Provider<List<Task>>((ref) {
  final tasks = ref.watch(taskListProvider);
  return tasks.where((task) => task.status).toList();
});

final selectedTaskProvider = Provider.family<Task, String>((ref, id) {
  final tasks = ref.watch(taskListProvider);
  return tasks.firstWhere((task) => task.id == id);
});
