import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/pages/home/widgets/home_state.dart';
import 'package:uuid/uuid.dart';

class AddTaskDialog extends ConsumerStatefulWidget {
  const AddTaskDialog({super.key});
  
  @override
  ConsumerState<AddTaskDialog> createState() => _AddTaskDialogState();  
}

class _AddTaskDialogState extends ConsumerState<AddTaskDialog> {
  late TextEditingController titleController, decroptionController;
  late GlobalKey<FormState> formkey;

  @override
  void initState() {
    titleController = TextEditingController();
    decroptionController = TextEditingController();
    formkey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    decroptionController.dispose();
    super.dispose();
  }

  void addNewTask({
    required String title,
    String? description,
  }) {
    final newTask = Task(
      id: const Uuid().v4(),
      title: title,
      description: description,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    ref.read(taskListProvider.notifier).addTask(newTask);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Task',
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Title is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: decroptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      addNewTask(
                        title: titleController.text,
                        description: decroptionController.text,
                      );
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text('Add Task'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
