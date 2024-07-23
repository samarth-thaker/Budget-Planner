import 'package:flutter/material.dart';

class MoreOptions extends StatelessWidget {
  const MoreOptions({super.key});
    static final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);

void home(BuildContext context) {
    Navigator.pushNamed(context, '/dashboard');
  }
  void plan(BuildContext context) {
    Navigator.pushNamed(context, '/plan');
  }
  void add(BuildContext context) {
    Navigator.pushNamed(context, '/add');
  }
  void stats(BuildContext context) {
    Navigator.pushNamed(context, '/stats');
  }
  void more(BuildContext context) {
    Navigator.pushNamed(context, '/more');
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
                  icon: Icon(Icons.more_vert_sharp),
                  label: 'More',
                ),
              ],
              onTap: (index) {
                _selectedIndex.value = index;
                switch (index) {
                  case 0:
                    home(context);

                    break;
                  case 1:
                    plan(context);
                    break;
                  case 2:
                    add(context);
                    break;
                  case 3:
                    stats(context);
                    break;
                  case 4:
                    more(context);
                    break;
                }
              },
            );
          }),
    );
  }
}