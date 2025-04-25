import 'package:counter_app_using_all_state_management/Bloc/bloc_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';

void main() {
  runApp(
    BlocProvider(
        create: (context) => CounterBloc(),
        child: const MyApp()),
  );
}
