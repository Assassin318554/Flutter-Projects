import 'package:flutter/material.dart';
import 'package:todo_app/pages/home/widgets/add_task_dialog_widgets.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/pages/home/widgets/custom_task_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Task> taskList = [];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    // final deviceheight = MediaQuery.of(context).size.height;

    final taskListWidget = taskList.map((singleTask) {
      return CustomTaskWidget(task: singleTask);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: deviceheight * 0.08,
        centerTitle: true,
        title: const Text(
          "Task Lists",
          style: TextStyle(
            fontFamily: 'Fira Code',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: theme.colorScheme.tertiary,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: deviceWidth * 0.04),
            child: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1713782522146-3ac703ab3bce?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open a dialogue box to for user input
          showDialog(
            context: context,
            builder: (context) {
              return AddTaskDialog(
                taskList: taskList,
                setState: () {
                  setState(() {});
                },
              );
            },
          );
          setState(() {
            taskList = taskList;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: taskListWidget.isEmpty
          ? const Center(child: Text('No Task Added'))
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: taskListWidget,
                ),
              ),
            ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
