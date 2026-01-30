import 'package:flutter/material.dart';
import '../domain/entities/navigation_item.dart';
import '../widgets/app_drawer.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'hero_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<NavigationItem> navItems = [
    NavigationItem(icon: Icons.home, label: 'Page 1'),
    NavigationItem(icon: Icons.star, label: 'Page 2'),
  ];

  final List<Widget> pages = const [PageOne(), PageTwo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Andriy Vakulenko')),

      drawer: const AppDrawer(),

      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: pages[selectedIndex],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const HeroPage()),
          );
        },
        child: const Icon(Icons.play_arrow),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() => selectedIndex = index);
        },
        items: navItems
            .map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item.icon),
                label: item.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
