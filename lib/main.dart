import 'package:budgetplanner/add.dart';
import 'package:budgetplanner/login.dart';
import 'package:budgetplanner/more.dart';
import 'package:budgetplanner/plan.dart';
import 'package:budgetplanner/signup.dart';
import 'package:budgetplanner/stats.dart';
import 'package:flutter/material.dart';
import 'package:budgetplanner/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const SignupScreen(),
      routes: {
        '/signup': (context) => const SignupScreen(),
        '/dashboard':(context) => const Dashboard(),
        '/login':(context)=>const LoginScreen(),
        '/more':(context)=>const MoreOptions(),
        '/plan' :(context)=> const Planning(),
        '/add':(context)=>const AddExpense(),
        '/stats':(context)=>const Statistics()
      },
    );
  }
}
