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
  Widget customTile(String title, IconData icon, BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double tilePadding = screenWidth*0.01;
    return Padding(
      padding: EdgeInsets.all(tilePadding),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
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
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: false,
      
      title: const Text("Settings",
      style: TextStyle(
              fontWeight: FontWeight.bold, 
              color: Colors.black, fontSize: 20,
              ),
      ),
    ),
      body: ListView(
        children:  [
          const SizedBox(height: 1),
          customTile("General", Icons.currency_rupee_rounded, context),
          const SizedBox(height: 1),
          customTile("Dashboard", Icons.fastfood, context),
          const SizedBox(height: 1),
          customTile("Account", Icons.shopping_bag, context),
          const SizedBox(height: 1),
          customTile("Categories", Icons.car_rental, context),
          const SizedBox(height: 1),
          customTile("Privacy", Icons.money, context),
          const SizedBox(height: 1),
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