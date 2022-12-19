import 'package:flutter/material.dart';
import 'package:playstore/constants/colors.dart';
import 'package:playstore/screens/preloginScreen/signup.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPass();
}

class _ForgotPass extends State<ForgotPass> {
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
                  "Account recovery",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),

                  Center(
                    child: Text(
                    "      To help your account safe, Google\n wants to make sure it's really you trying to\n                            sign in",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                ), 
              ),
                  ),

              SizedBox(height: 7),

                  Text(
                  "anonymous@gmail.com",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ), 
              ),
            
              SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                  "        Get a verification code",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ), 
              ),
                ],),
              
              SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                  "        To get a verification code, first confirm the\n        recovery email address you added to your account\n        ear***********@yahoo.com",
                
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ), 
              ),
                ],),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                        hintText: "Enter recovery email address",
                        hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
                      ),
                    ),
                  ),
                ),
              ),
              
             SizedBox(height: 50),
             Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('        Try another way', 
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold
                  )),
              ]
             ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 140.0,
                  
                  ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                        ),
                      child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUpScreen()));
                  },
                      child: Center(
                        child: Text(
                          'Send',
                          style: TextStyle(color: Colors.black),
                          
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ),
          ]
          )
        )
      )
    );
  }
}