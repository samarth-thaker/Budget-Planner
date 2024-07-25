import 'package:flutter/material.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({super.key});
    static final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);

void _navigateTo(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: _selectedIndex,
          builder: (context, selectedIndex, child) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              selectedItemColor: Colors.black,
              unselectedItemColor: const Color.fromARGB(249, 128, 128, 128),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon((Icons.home_rounded)),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.rule_sharp),
                  label: 'Plan',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_sharp),
                  label: 'Add',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.moving_sharp),
                  label: 'Stats',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
              onTap: (index) {
              _selectedIndex.value = index;
              _navigateTo(
                  context, ['/', '/plan', '/add', '/stats', '/more'][index]);
                          },
            );
          }),
    );
  }
}