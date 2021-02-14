import 'dart:io';

import 'package:flutter/material.dart';
import 'package:omnieats1/pages/checkout.dart';
import 'package:omnieats1/pages/shop_items.dart';

void main() {
  runApp(MaterialApp(
    title: 'OmniEats Food Delivery',
    home: LoginPage(),
  ));
}
class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'OmniEats',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },

                  child: Text('Forgot Password'),
                ),

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: Text('Login'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Merchants()),
                        );
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('New here?'),
                        TextButton(

                          child: Text(
                            'Create Account',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Registration()),
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}

// ignore: must_be_immutable
class Registration extends StatelessWidget {
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pNumberController = TextEditingController();
  TextEditingController uNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registration'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: fNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: lNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: pNumberController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: uNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: password2Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Retype Password',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    //forgot password screen
                  },

                  child: Text('Important Reminder:'),
                ),

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: Text('Register'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Registration1()),
                        );
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Already have an account?'),
                        TextButton(

                          child: Text(
                            'Log In',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}

class Registration1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registration"),
        ),

        body: Center(
          child: ListView(
              children: <Widget>[
          Container(
          alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'A verification link has been sent to your email address. Please confirm to start using OmniEats.',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: Text('Done'),
                      onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                );
                },
                    )),
        ]
          )
    ));
  }
}

class ForgotPassword extends StatelessWidget {

  TextEditingController emailController = TextEditingController();
  TextEditingController pNumberController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Forgot Password'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: pNumberController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                    ),
                  ),
                ),
                TextButton(
                  child: Text('Please input your Email Address or Phone Number'),
                ),

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: Text('Done'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PasswordReset1()),
                        );
                      },
                    )),
              ],
            )));
  }
}

class PasswordReset1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Password Reset"),
        ),

        body: Center(
            child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'A password reset link has been sent to your email address. Please confirm to reset your password .',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: Text('Done'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      )),
                ]
            )
        ));
  }
}

class Merchants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Marketplace"),
        ),

        body: Center(
            child: ListView(
                children: <Widget>[
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: Text('Ambers'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ambers()),
                          );
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: Text('Backyard Steakhouse'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: Text('Chowking'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: Text('Dencios'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: Text('El Dorado Tacos'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: Text('French Baker'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: Text('Great Khali Shawarma'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: Text('Pancake House'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: Text('Reyes Barbecue'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      )),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: Text('Aling Nenas Karenderia'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      )),
        ]

            )
        ),


    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0, // this will be set when a new tab is tapped
      items: [
      BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home'),
      ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.receipt),
          title: new Text('Receipt'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile')
        )
      ],
    ),
    );
  }
}

class Ambers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(0, 144, 255, .1),
      100: Color.fromRGBO(0, 144, 255, .2),
      200: Color.fromRGBO(0, 144, 255, .3),
      300: Color.fromRGBO(0, 144, 255, .4),
      400: Color.fromRGBO(0, 144, 255, .5),
      500: Color.fromRGBO(0, 144, 255, .6),
      600: Color.fromRGBO(0, 144, 255, .7),
      700: Color.fromRGBO(0, 144, 255, .8),
      800: Color.fromRGBO(0, 144, 255, .9),
      900: Color.fromRGBO(0, 144, 255, 1),
    };
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF0288D1, color),
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => ShopItems(),
        '/checkout': (BuildContext context) => Checkout()
      },
    );
  }
}