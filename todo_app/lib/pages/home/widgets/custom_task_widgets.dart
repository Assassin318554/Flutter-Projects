import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class CustomTaskWidget extends StatefulWidget {
  const CustomTaskWidget({super.key, required this.task, required this.reload});
  final Task task;
  final VoidCallback reload;

  @override
  State<CustomTaskWidget> createState() => CustomTaskWidgetState();
}

class CustomTaskWidgetState extends State<CustomTaskWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deviceWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      widget.task.toogleCompleted();
                    });
                    widget.reload.call(); // in home page
                  },
                  icon: Icon(
                    widget.task.status
                        ? Icons.check_box
                        : Icons.circle_outlined,
                    color:
                        widget.task.status ? theme.colorScheme.primary : null,
                  ),
                ),
                const SizedBox(width: 5),
                SizedBox(
                  width: deviceWidth * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.task.title,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (widget.task.description != null &&
                          widget.task.description != "")
                        Text(
                          widget.task.description ?? "",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontSize: 10,
                            color: theme.colorScheme.secondary,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
              // onPressed: toogle;
              // onPressed: () => toogle();
              onPressed: () {
                setState(() {
                  widget.task.toogleStatus();
                });
              },
              icon: Icon(
                Icons.star,
                color: widget.task.favourite ? theme.colorScheme.primary : null,
              ),
            ),
          ]),
    );
  }
}
