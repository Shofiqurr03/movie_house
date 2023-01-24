import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movie_house/home.dart';
import 'package:movie_house/model/Provider/google_sign_in.dart';
import 'package:movie_house/model/page/movie_display_screen.dart';
import 'package:provider/provider.dart';





void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),

      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: Brightness.dark
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
      ),
    );


  }
  }


