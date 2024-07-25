import 'package:flutter/material.dart';

class Planning extends StatelessWidget {
  const Planning({super.key});
  static final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  void _navigateTo(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
  void plannedpayments(){}
  void budgets(){}
  Widget customTile(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListTile(
        contentPadding:
          const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      title: Text(title,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black)),
      trailing: const Icon(Icons.add_circle_sharp, color: Colors.black, size: 30,),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      tileColor:const Color.fromARGB(249, 128, 128, 128),
      onTap: onTap,
      ),
      
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Planning',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
      ),
      body: ListView(children: [
       const SizedBox(height: 18),
       customTile("Planned Payments", plannedpayments),
            const SizedBox( height: 18,),
            customTile("Budgets", budgets),
            const SizedBox( height: 18,),
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
