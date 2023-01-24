import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_house/model/Provider/google_sign_in.dart';
import 'package:movie_house/model/page/fb_desplay.dart';
import 'package:movie_house/model/page/google+_desplay.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return LoggedInWidget();
          } else if (snapshot.hasError) {
            return Center(child: Text('Something went wrong!'));
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WELLCOME',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      minimumSize: Size(double.infinity, 50)),
                  icon: FaIcon(FontAwesomeIcons.googlePlus),
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.googleLogin();
                  },
                  label: Text('Sign Up with  Google')),
              SizedBox(height: 15),
              Text(
                'or',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      minimumSize: Size(double.infinity, 50)),
                  icon: FaIcon(FontAwesomeIcons.facebook),
                  onPressed: () {
                    facebookLogin(context);
                  },
                  label: Text('Sign Up with Facebook')),
            ],
          );
        },
      ),
    );
  }

  facebookLogin(BuildContext context) async {
    try {
      final result = await FacebookAuth.instance
          .login(permissions: ['public_profile', 'email']);
      if (result.status == LoginStatus.success) {
        var userData = await FacebookAuth.instance.getUserData();
        userData = userData;
        print('facebook_login_data:-');
        print(userData);

        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => HomePage(
                image: userData['picture']['data']['url'],
                name: userData['name'],
                email: userData['email'])));
      }
    } catch (error) {
      print(error);
    }
  }
}
