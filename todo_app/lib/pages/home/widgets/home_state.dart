import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/task.dart';

final taskListProvider = StateProvider<List<Task>>((ref) {
  return [];
});

final incompletedTaskProvider = StateProvider<List<Task>>((ref) {
  final tasks = ref.watch(taskListProvider);

  return tasks.where((element) => !element.status).toList();
});

final completedTaskProvider = StateProvider<List<Task>>((ref) {
  final tasks = ref.watch(taskListProvider);

  return tasks.where((element) => element.status).toList();
});

final selectedTaskProvider = StateProvider.family<Task, String>((ref, id) {
  final tasks = ref.watch(taskListProvider);
  return tasks.firstWhere((element) => element.id == id);
});
