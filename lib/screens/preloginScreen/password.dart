import 'package:flutter/material.dart';
import 'package:playstore/constants/colors.dart';
import 'package:playstore/screens/preloginScreen/forgotpass.dart';

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
              SizedBox(height: 10),
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
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),  
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "   Enter your password",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blueAccent),
                        ),
                        hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
                labelStyle: TextStyle(
                  color: Colors.grey
                ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                    Expanded(
                    child: CheckboxListTile(
                      side: BorderSide(color: Color(0xff585858)),
                        controlAffinity: ListTileControlAffinity.leading,
                          value: isChecked,
                          title: Text("Show Password",
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                        ), 
                          ),
                          activeColor: Colors.blueAccent,
                          onChanged: (newBool) {
                            setState(() {
                              isChecked = newBool;
                            });
                          },
                        ),    
                  ) 
              ],),
             SizedBox(height: 30),
             Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Text('           Forgot Password?', 
                // style: TextStyle(
                //   color: Colors.lightBlueAccent,
                //   fontWeight: FontWeight.bold
                //   )),
                TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ForgotPass()));
                      }, child: const Text("    Forgot Password?",
                     style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15,
                ), 
                )),
              ]
             ),
              SizedBox(height: 135),
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
                        color: Colors.blueAccent,
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