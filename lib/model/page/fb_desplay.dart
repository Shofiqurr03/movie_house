import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:movie_house/home.dart';
import 'package:movie_house/model/page/movie_display_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({this.image, this.name, this.email});

  @override
  State<HomePage> createState() => _HomePageState();
  final image;
  final name;
  final email;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello, ' + widget.name),
          actions: [
            Container(
                child: TextButton(
              onPressed: () {
                FacebookAuth.instance.logOut();

                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.white60),
              ),
            ))
          ],
        ),
        body: movie_display());
  }
}
