import 'package:counter_app_using_all_state_management/Getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxUiScreen extends StatelessWidget {
  const GetxUiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Counter App with Getx',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter Value :', style: TextStyle(fontSize: 20)),
           Obx(
             () => Text(
               counterController.count.toString(),
               style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
           ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counterController.decrement();
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    counterController.increment();
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
