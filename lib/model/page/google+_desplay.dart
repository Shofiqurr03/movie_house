import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movie_house/home.dart';
import 'package:movie_house/model/Provider/google_sign_in.dart';
import 'package:movie_house/model/page/movie_display_screen.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userr = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello, ' + userr.displayName!),
          actions: [
            Container(
                child: TextButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                print('click');
                // Navigator.pop(context);
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
