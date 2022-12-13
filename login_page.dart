import 'dart:html';

import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blue,
    body: Column(children: [
      //Hello again!
      Text(
     'Hello again!',
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 35,
      ), //Textstyle
  ), // Text
        SizedBox(height: 10),
        Text(
        'Welcome back, We missed you!',
         style: TextStyle(
         fontSize: 20,
         ),
        ),
       SizedBox(height: 50),

      //email text field
      Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25.0),
         child: Container(
         controller: _passwordController,
         decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12)),
        child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Email',
          ),
           ),
          ),
          ),
          ),
       SizedBox(height: 10),

     

      //password textfield
       Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
          controller: _passwordController,
          decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12)),
          child: Padding(
             padding: const EdgeInsets.only(left: 20.0),
             child: TextField(
             obscureText: true,
             decoration: InputDecoration(
             border: InputBorder.none,
            hintText: 'Password',
            ),
           ),
          ),
         ),
         ),
        SizedBox(height: 10),

      //sign up button
 Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: GestureDetector(
                      onTap: signIn,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
      // not a member? register now
        Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: Widget.showSignupPage,
                        child: Text(
                          ' Register now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }



    ]), //Column
    ); // Scaffold
  }
} 
 