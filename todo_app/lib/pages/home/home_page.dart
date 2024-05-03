import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/pages/home/widgets/add_task_dialog_widgets.dart';
import 'package:todo_app/pages/home/widgets/bottom_navbar_widgets.dart';
import 'package:todo_app/pages/home/widgets/custom_task_widgets.dart';
import 'package:todo_app/pages/home/widgets/home_state.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deviceWidth = MediaQuery.of(context).size.width;

    final incompleteTask = ref.watch(completedTaskProvider);
    final completeTask = ref.watch(incompletedTaskProvider);

    final taskListWidget = incompleteTask.map((singleTask) {
      return CustomTaskWidget(id: singleTask.id);
    }).toList();

    final completedTaskWidget = completeTask.map((singleTask) {
      return CustomTaskWidget(id: singleTask.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: deviceheight * 0.08,
        centerTitle: true,
        title: const Text(
          "To Do Lists",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: theme.colorScheme.primary,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open a dialogue box to for user input
          showDialog(
            context: context,
            builder: (context) {
              return const AddTaskDialog();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: completedTaskWidget.isEmpty && incompleteTask.isEmpty
          ? Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.network(
                    "https://assets4.lottiefiles.com/datafiles/vhvOcuUkH41HdrL/data.json"),
                const SizedBox(height: 10),
                const Text(
                  'No Tasks Yet',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Reload'),
                )
              ],
            ))
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    ...taskListWidget,
                    ExpansionTile(
                        initiallyExpanded: true,
                        title: Text(
                            'Completed Tasks (${completedTaskWidget.length})'),
                        children: completedTaskWidget),
                  ],
                ),
              ),
            ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
