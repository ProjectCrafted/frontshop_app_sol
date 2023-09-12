import 'package:flutter/material.dart';
import 'register.dart';
import 'square_tile.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/login.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 80), // Adjust the height as needed
                    Text(
                      'Welcome Back',
                      style: TextStyle(color: Colors.white, fontSize: 33),
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Myregister(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white, fontSize: 33),
                      ),
                    ),
                  ],
                ),
              ),
              //divider and squaretiles
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                        height: 180, // Adjusted height
                      ),
                    ),
                    SizedBox(width: 5), // Reduced space
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or Continue with',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 5, height: 500), // Reduced space
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(vertical: 300.0, horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'images/google.png'),
                    SizedBox(width: 15.0),
                    SquareTile(imagePath: 'images/facebook.png'),
                    SizedBox(width: 15.0),
                    SquareTile(imagePath: 'images/mail.png'),
                    SizedBox(width: 15.0),
                    SquareTile(imagePath: 'images/phone.png'),
                  ],
                ),
              ),
              //email
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email Address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      //password
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      //forgot password
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forgot Password?',
                              style:
                              TextStyle(color: Colors.black, fontSize: 14),
                            )
                          ],
                        ),
                      ),

                      // Sign in button
                      SizedBox(height: 70),
                      Container(
                        width: 358,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            print("ElevatedButton");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Myregister(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),

                      //create acc button
                      SizedBox(height: 20),
                      Container(
                        width: 359,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            print("ElevatedButton");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Myregister(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          child: Text(
                            'CREATE ACCOUNT',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
