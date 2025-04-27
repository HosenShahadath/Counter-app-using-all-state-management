import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HooksUiScreen extends HookWidget {
  const HooksUiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Counter App with Mobx',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter Value :', style: TextStyle(fontSize: 20)),
            Text(
              counter.value.toString(),
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counter.value--;
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    counter.value++;
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
