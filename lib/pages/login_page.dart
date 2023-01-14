import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png",fit: BoxFit.cover,),

          Text("Welcome" , style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)


        ],
      ),
    );
  }
}
