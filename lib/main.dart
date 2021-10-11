// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold));
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('SignIn'),
      ),
      body: Stack(
        children: [
          Container(
            height: height * 0.36,
            width: width,
            color: Colors.transparent,
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.3,
            maxChildSize: 1.0,
            builder: (BuildContext context, myScrollController) {
              return ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                child: Container(
                  child: ListView(
                    controller: myScrollController,
                    children: [
                      Container(
                        height: 1200.0,
                        width: width,
                        color: Colors.deepOrange,
                        padding: const EdgeInsets.all(30.0),
                        // margin: EdgeInsets.only(left: 30.0),
                        child: Column(
                          // margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(30.0),
                              margin: EdgeInsets.only(
                                  left: 30.0, right: 30.0, top: 50.0),
                              child: TextField(
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  icon: Icon(Icons.mail,
                                      color: Color(0xFFC41A3B)),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                      color: Color(0xFF1B1F32),
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                  filled: true,
                                  fillColor: Colors.white70,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    borderSide: BorderSide(
                                        color: Colors.white54, width: 2),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 12.0),
                            Container(
                              padding: const EdgeInsets.all(30.0),
                              margin: EdgeInsets.only(
                                  top: 5.0, left: 30.0, right: 30.0),
                              child: TextField(
                                obscureText: _isObscure,
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock,
                                    color: Color(0xFFC41A3B),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.visibility_off,
                                      color: Color(0xFFC41A3B),
                                    ),
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      color: Color(0xFF1B1F32),
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                  filled: true,
                                  fillColor: Colors.white70,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    borderSide: BorderSide(
                                        color: Colors.white54, width: 2),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 12.0),
                            Container(
                              padding: const EdgeInsets.all(30.0),
                              margin: EdgeInsets.only(top: 5.0, left: 30.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  child: Text(
                                    'Forgot Password ?',
                                    style: TextStyle(
                                        color: Color(0xFF1B1F32),
                                        fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Spacer(),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(
                                  top: 0.0,
                                  bottom: 0.0,
                                  right: 16.0,
                                  left: 16.0),
                              margin: EdgeInsets.only(top: 20.0),
                              child: ElevatedButton(
                                style: style,
                                onPressed: () {},
                                child: const Text('Sign In'),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  child: Text(
                                    'Create Account ?',
                                    style: TextStyle(
                                        color: Color(0xFF1B1F32),
                                        fontSize: 20.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
