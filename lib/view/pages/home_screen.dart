import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mechine_testt/view/pages/home_page.dart';
import 'package:mechine_testt/view/pages/search_page.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    final List<Widget> _pages = [
      const HomePage(),
      const SearchPage(),
    ];
    return Scaffold(
      body: _pages[selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.yellow[700],
          currentIndex: selectedIndex.value,
          onTap: (value) {
            selectedIndex.value = value;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'SEARCH',
            ),
          ]),
    );
  }
}
