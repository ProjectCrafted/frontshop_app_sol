import 'package:flutter/material.dart';
import 'square_tile.dart';

class Myregister extends StatefulWidget {
  const Myregister({Key? key}) : super(key: key);

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/register.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80),
                Text(
                  'Join Us',
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
                SizedBox(height: 10), // Reduced space
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.black,
                          height: 180,  // Adjusted height
                        ),
                      ),
                      SizedBox(width: 5),  // Reduced space
                      Text(
                        'Continue with',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 5),  // Reduced space
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'images/google.png'),
                    SizedBox(width: 5),  // Reduced space
                    SquareTile(imagePath: 'images/facebook.png'),
                    SizedBox(width: 5),  // Reduced space
                    SquareTile(imagePath: 'images/mail.png'),
                    SizedBox(width: 5),  // Reduced space
                    SquareTile(imagePath: 'images/phone.png'),
                  ],
                ),
                SizedBox(height: 40), // Reduced space
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: 'Confirm Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          // Implement your registration logic here
                        },
                        child: Text('Register'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
