import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);
  static String name = '', userId = '';

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                MyLogin.name = value;
              },
              decoration: InputDecoration(
                  hintText: 'Name', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {
                MyLogin.userId = value;
              },
              decoration: InputDecoration(
                  hintText: 'UserId', border: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
