import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_house/model/Dashboard.dart';

class movie_description extends StatelessWidget {
  String image;
  movie_description({required this.image});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Dashboard(image: image),
      ),
    );
  }
}
