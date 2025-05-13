import 'package:counter_app_using_all_state_management/Provider/Counter%20App/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => CounterProvider()),
    ],
    child: const MyApp(),
    )
  );
}
