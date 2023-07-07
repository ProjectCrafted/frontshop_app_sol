import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: NavigationBar(
            destinations: [
              NavigationDestination(
                  icon: Icon(Icons.home),
                  label: "Home"
              ),
              NavigationDestination(
                  icon: Icon(Icons.search),
                  label: "Search"
              ),
              NavigationDestination(
    icon: FloatingActionButton(
    child: Icon(Icons.shopping_cart),
    onPressed: (){},
    ),
    label: "Cart"
                 ),
              NavigationDestination(
                  icon: Icon(Icons.favorite),
                  label: "Wishlist"
              ),
              NavigationDestination(
                  icon: Icon(Icons.person_outline_outlined),
                  label: "Profile"
              ),
            ]
        ),
      ),

    );
  }
}
