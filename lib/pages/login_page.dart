import 'package:flutter/material.dart';

import '../utils/route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: (){
                setState((){
                  changeButton = true;
                });
               // Navigator.pushNamed(context,MyRoute.homeRoute);
              },
              child:  AnimatedContainer(
                duration: Duration(seconds: 1),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton ? Icon(Icons.done,color: Colors.white,) : Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                       borderRadius: BorderRadius.circular(changeButton ? 50 : 8)
                  ),
                ) ,

            )

            /*ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,MyRoute.homeRoute);
              },
              child: Text("Login"),
              style: TextButton.styleFrom(),
            )*/
          ],
        ),
      ),
    );
  }
}
