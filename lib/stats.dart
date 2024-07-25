import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
   const Statistics({Key? key}) : super(key: key);

  static final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  Widget customTile(String title, IconData icon, BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double tilePadding = screenWidth * 0.01;
    return Padding(
      padding: EdgeInsets.all(tilePadding),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: Icon(
          icon,
          color: Colors.black,
          size: 30,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        tileColor: const Color.fromARGB(249, 128, 128, 128),
      ),
    );
  }

  void _navigateTo(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Statistics',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          
          customTile("Cash", Icons.currency_rupee_rounded, context),
          customTile("Food", Icons.fastfood, context),
          customTile("Shopping", Icons.shopping_bag, context),
          customTile("Transportation", Icons.car_rental, context),
          customTile("Investments", Icons.money, context),
          customTile("Others", Icons.currency_rupee_rounded, context),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: _selectedIndex,
        builder: (context, selectedIndex, child) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: const Color.fromARGB(249, 128, 128, 128),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.rule_sharp),label: 'Plan'),
              BottomNavigationBarItem(icon: Icon(Icons.add_circle_sharp),label: 'Add'),
              BottomNavigationBarItem(icon: Icon(Icons.moving_sharp),label: 'Stats'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
            ],
            onTap: (index) {
              _selectedIndex.value = index;
              _navigateTo(
                  context, ['/', '/plan', '/add', '/stats', '/more'][index]);
                          },
          );
        },
      ),
    );
  }
}
