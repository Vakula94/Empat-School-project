import 'package:flutter/material.dart';
import '../models/user.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = User.fromMap({'name': 'Ivan', 'age': 20});

    List<String> hobbies = ['Flutter', 'Dart', 'UI'];
    Set<int> numbers = {1, 2, 3};
    Map<String, String> settings = {'theme': 'dark'};

    // Анонімна функція з іменованими параметрами
    void showMessage({required String text, int? repeat}) {
      int count = repeat ?? 1;
      for (int i = 0; i < count; i++) {
        debugPrint(text);
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${user.name}'),
            Text('Age: ${user.age?.toString() ?? 'Unknown'}'),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                user.celebrateBirthday();
                showMessage(text: 'Button clicked', repeat: 2);
              },
              child: const Text('Celebrate birthday'),
            ),

            const SizedBox(height: 20),

            Text('Hobbies: ${hobbies.join('Jogging, swimming, sleeping')}'),
            Text('Numbers count: ${numbers.length}'),
            Text('Theme: ${settings['theme'] ?? 'light'}'),
          ],
        ),
      ),
    );
  }
}
