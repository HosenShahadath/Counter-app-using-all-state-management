import 'package:counter_app_using_all_state_management/Provider/Task%20App/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task App')),
      body: Consumer<TaskData>(
        builder:
            (context, taskData, child) => ListView.builder(
              itemCount: taskData.taskCount,
              itemBuilder: (context, index) {
                final task = taskData.tasks[index];
                return ListTile(
                  title: Text(
                    task.name,
                    style: TextStyle(
                      decoration: task.isDone ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  trailing: Checkbox(value: task.isDone, onChanged: (value){
                    taskData.updateTask(task);
                  }),
                  onLongPress: (){
                    taskData.deleteTask(task);
                  }
                );
              },
            ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context) => const AddTaskScreen());
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10,),
          const Text(
            'Add Task',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            autofocus: true,
            onChanged: (value){
              newTaskTitle = value;
            },
          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            if(newTaskTitle.trim().isNotEmpty){
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle.trim());
              Navigator.pop(context);
            }
          }, child: const Text('Add'))
        ],
      ),
    );
  }
}
