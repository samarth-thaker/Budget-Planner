import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

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
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth * 0.4;
    //double containerWidth_2 = screenWidth * 0.2;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Hi!",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
        
      ),
      body: Center(
        heightFactor: 1.5,
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.all(8), 
            width: containerWidth,
            height: 150,
            //color: const Color.fromARGB(249, 128, 128, 128),
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color.fromARGB(249, 128, 128, 128),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: containerWidth,
            height: 150,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color.fromARGB(249, 128, 128, 128),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
      ),
    );
  }
}