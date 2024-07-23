import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  void login(BuildContext context){
    Navigator.pushNamed(context, "/dashboard");
  }
  void signup(BuildContext context){
    Navigator.pushNamed(context, "/signup");
  }
  Widget customElevatedButton(
      String action, VoidCallback ontap, double buttonWidth) {
    return SizedBox(
      width: buttonWidth,
      child: TextButton(
        onPressed: ontap,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(const Color.fromARGB(249, 0, 0, 0)),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical:12)),
      ),
      child: Text(action, style: const TextStyle(color:Color.fromARGB(249, 255, 255, 255), fontSize: 20),),
      
      )
    );
  }
  Widget customTextButton( 
      String action, VoidCallback ontap, double buttonWidth) {
    return SizedBox(
      width: buttonWidth,
      child: TextButton(
        onPressed: ontap,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(const Color.fromARGB(249, 128, 128, 128)),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical:12)),
      ),
      child: Text(action, style: const TextStyle(color:Color.fromARGB(249, 255, 255, 255), fontSize: 16),),
      
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.8;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Login', style: TextStyle(
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
              customElevatedButton("Login", ()=>login(context), buttonWidth),
              const SizedBox(
                height: 16,
              ),
              const Text("Or", style: TextStyle(color: Color.fromARGB(249, 128, 128, 128)),),
              const SizedBox(
                height: 16,
              ),
              customTextButton("Continue with Google", ()=>login(context), buttonWidth),
              const SizedBox(
                height: 16,
              ),
              customTextButton("Continue with Facebook", ()=>login(context), buttonWidth),
              const SizedBox(
                height: 20,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () => signup(context),
                      child: const Text('Signup'))
                ],
              )
            ],
          )),
    );
  }
}
