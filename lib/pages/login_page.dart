import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png",fit: BoxFit.cover,),
          SizedBox(
            height: 20.0,
          ),
          Text("Welcome" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
          ,SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter Username",labelText: "Username"),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter Password",labelText: "Password"),
                )
              ],
            ),
          ),
          ElevatedButton(onPressed: (){
            log("clicked ");
          }, child: Text("Login"),style: TextButton.styleFrom(),)
        ],
      ),
    );
  }
}
