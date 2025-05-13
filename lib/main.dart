import 'package:counter_app_using_all_state_management/Provider/Counter%20App/counter_provider.dart';
import 'package:counter_app_using_all_state_management/Provider/Task%20App/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MyApp(),
    ),
  );
}
