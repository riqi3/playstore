import 'package:flutter/material.dart';
import 'package:playstore/constants/colors.dart';
import 'package:playstore/screens/preloginScreen/forgotemail.dart';
import 'package:playstore/screens/preloginScreen/password.dart';

import '../Homepage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                  "Google",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 15),
              Text(
                  "Sign in",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                  "with you Google Account.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ), 
              ),
              Text(
                  " Learn more",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              ],
              
              ),
              
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),  
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email or phone",
                        hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                   TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ForgotEmail()));
                      }, child: const Text("       Forgot email?",
                     style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15,
                ), 
                )),
              ]
             ),
             SizedBox(height: 50),
             Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ForgotEmail()));
                      }, child: const Text("       Create account",
                     style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15,
                ), 
                )),
              ]
             ),
              SizedBox(height: 160),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 140.0,
                  
                  ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 89, 99, 115),
                        borderRadius: BorderRadius.circular(5),

                        ),
                        child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PasswordScreen()));
                  },
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.black),
                          
                        ),
                      ),
                    ),
                )],
                ),
              ),
          ]
          )
        )
      )
    );
  }
}