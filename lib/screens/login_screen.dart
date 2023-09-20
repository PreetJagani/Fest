import 'package:fest/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
                hintText: 'Enter Your Name',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter Your Password',
              ),
            ),
            const SizedBox(height: 20),
            const Text("Admin Login", style: TextStyle(color: Colors.blue, fontSize: 18),),
            const SizedBox(height: 20),
            TextButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16))
                        )
                    )
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) {
                    return const HomeScreen();
                  },));
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                  child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20)
                  ),
                )
            )
          ]),
    ),);
  }
}
