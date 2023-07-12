import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.jpg'),fit: BoxFit.cover)),
            child: Scaffold(
          backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  Container(
              padding: EdgeInsets.only(left: 15, top: 110),
                    child: Text('Welcome Back \n Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 33),
                    )
                    ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5, left: 20, right: 20),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Email Address',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sign In',style: TextStyle(
                                color: Color(0xCE5117),
                                fontSize: 28,fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xCE5117),
                                child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward),
                                ),
                              )
                            ],
                          ),
                    SizedBox(
                      height: 20,
                    ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed:() {
                                    Navigator.pushNamed(context, 'register');
                                  }, child: Text('Sing Up',style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Color(0xCE5117),
                              ),)),
                              TextButton(
                                  onPressed:() {}, child: Text('Forgrt Password',style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Color(0xCE5117),
                              ),)),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
              ],
              ),
      ),
    );
  }
}
