import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  void signup(BuildContext context) {
    Navigator.pushNamed(context, "/dashboard");
  }

  void login(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }

  Widget customElevatedButton(
      String action, VoidCallback ontap, double buttonWidth) {
    return SizedBox(
        width: buttonWidth,
        child: TextButton(
          onPressed: ontap,
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all(const Color.fromARGB(249, 0, 0, 0)),
            padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(vertical: 12)),
          ),
          child: Text(
            action,
            style: const TextStyle(
                color: Color.fromARGB(249, 255, 255, 255), fontSize: 20),
          ),
        ));
  }

  Widget customTextButton(
      String action, VoidCallback ontap, double buttonWidth) {
    return SizedBox(
        width: buttonWidth,
        child: TextButton(
          onPressed: ontap,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
                const Color.fromARGB(249, 128, 128, 128)),
            padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(vertical: 12)),
          ),
          child: Text(
            action,
            style: const TextStyle(
                color: Color.fromARGB(249, 255, 255, 255), fontSize: 16),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.8;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Signup',
          style: TextStyle(
            color: Color.fromARGB(249, 0, 0, 0),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 16,
              ),
              customElevatedButton(
                  "Signup", () => signup(context), buttonWidth),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Or",
                style: TextStyle(color: Color.fromARGB(249, 128, 128, 128)),
              ),
              const SizedBox(
                height: 16,
              ),
              customTextButton(
                  "Continue with Google", () => signup(context), buttonWidth),
              const SizedBox(
                height: 16,
              ),
              customTextButton(
                  "Continue with Facebook", () => signup(context), buttonWidth),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () => login(context),
                      child: const Text('Login'))
                ],
              )
            ],
          )),
    );
  }
}
