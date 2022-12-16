import 'package:flutter/material.dart';
import 'package:playstore/constants/colors.dart';

import '../Homepage.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreen();
}

class _PasswordScreen extends State<PasswordScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
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
                  "Welcome",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                  "anonymous@gmail.com",
                style: TextStyle(
                  color: Colors.grey,
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
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Row(
                children: <Widget>[
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                      child: Checkbox(
                          value: isChecked,
                          activeColor: Colors.blueAccent,
                          onChanged: (newBool) {
                            setState(() {
                              isChecked = newBool;
                            });
                          },
                        ),         
                  ),
              Text("     Show Password",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              ],),
             SizedBox(height: 50),
             Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Text('           Forgot Password?', 
                // style: TextStyle(
                //   color: Colors.lightBlueAccent,
                //   fontWeight: FontWeight.bold
                //   )),
                TextButton(
                      onPressed: () {}, child: const Text("          Forgot Password?",
                     style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15,
                ), 
                )),
              ]
             ),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 140.0,
                  
                  ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(5),
                        ),
                      child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomepageScreen()));
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