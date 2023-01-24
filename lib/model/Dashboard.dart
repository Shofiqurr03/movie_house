import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  String image;

  Dashboard({required this.image});

  // var images =[
  //   'image/Thor.jpg',
  //   'image/Kung.jpg',
  //   'image/Spider.jpg',
  //   'image/Iron.jpg',
  //   'image/Avenger.jpg',
  //   'image/Thor.jpg',
  //   'image/Dragonball.jpg',
  //   'image/Thor.jpg',
  //   'image/Kung.jpg',
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 185, width: 130, child: Image.asset(image)),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Thor'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Jun 20 - Aug 29'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('America'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.white12,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.facebook_sharp),
                Icon(
                  FontAwesomeIcons.instagram,
                ),
                Icon(
                  FontAwesomeIcons.twitter,
                ),
                Icon(
                  FontAwesomeIcons.shareNodes,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'THOR MOVIE',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'Thor is a 2011 American superhero film based on the Marvel Comics character of the same name. Produced by Marvel Studios and distributed by Paramount Pictures,[a] it is the fourth film in the Marvel Cinematic Universe (MCU). It was directed by Kenneth Branagh, written by the writing team of Ashley Edward Miller and Zack Stentz along with Don Payne, and stars Chris Hemsworth as the title character alongside Natalie Portman, Tom Hiddleston, Stellan Skarsgård, Kat Dennings, Clark Gregg, Colm Feore, Ray Stevenson, Idris Elba, Jaimie Alexander, Rene Russo, and Anthony Hopkins.',
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Thor premiered in Sydney on April 17, 2011, and was released in the United States on May 6, as part of Phase One of the MCU.',
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'It received generally positive reviews from critics and was a financial success, earning 449.3 million worldwide.It received generally positive reviews from critics and was a financial success. ',
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
