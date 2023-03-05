import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Colors.blueAccent, // you can use any color
            Colors.redAccent, //
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle),
                  child: Center(
                      child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 120,
                  )),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  controller: usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Sign in",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color.fromARGB(255, 228, 226, 226),
                    onPrimary: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Can' 't acces to your account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
