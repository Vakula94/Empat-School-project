import '../mixins/logger_mixin.dart';

class User with LoggerMixin {
  final String name;
  int? age;

  // Основний конструктор
  User(this.name, this.age) : assert(name.isNotEmpty, 'Name must not be empty');

  // Іменований конструктор
  User.guest() : name = 'Guest', age = null;

  // Фабричний конструктор
  factory User.fromMap(Map<String, dynamic> map) {
    return User(map['name'] ?? 'Unknown', map['age']);
  }

  void celebrateBirthday() {
    age ??= 0;
    age = age! + 1;
    log('User $name is now $age years old');
  }
}
