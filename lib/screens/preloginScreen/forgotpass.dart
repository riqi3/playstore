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
                  "Change password",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),

                  Center(
                    child: Text(
                    "anonymous@gmail.com",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                ), 
              ),
                  ),

              SizedBox(height: 7),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                      "         Create a strong password",
                style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                ), 
              ),
                    ],
                  ),
            
              SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                  "         Create a new, strong password that you don't use for other\n         websites",
                style: TextStyle(
                  color: Colors.white,
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
                    padding: const EdgeInsets.only(left: 1.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Create password",
                        labelText: "   Create password",
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
                    padding: const EdgeInsets.only(left: 1.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Create password",
                        labelText: "   Confirm password",
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
                          'Next',
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