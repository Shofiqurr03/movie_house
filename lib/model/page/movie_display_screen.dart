import 'package:flutter/material.dart';
import 'package:movie_house/model/page/movie_description.dart';

class movie_display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.black12,
        margin: EdgeInsets.all(10),
        child: GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5.0,
            childAspectRatio: .55,
          ),
          children: [
            Card(
              color: Colors.black,
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            movie_description(image: 'image/Thor.jpg'),
                      ));
                },
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    AspectRatio(
                      aspectRatio: 0.64,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/Thor.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),

                        //SizedBox(height: 125,),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Thor',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            movie_description(image: 'image/Kung.jpg'),
                      ));
                },
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    AspectRatio(
                      aspectRatio: 0.64,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/Kung.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),

                        //SizedBox(height: 125,),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Kung Fu Panda',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            movie_description(image: 'image/Spider.jpg'),
                      ));
                },
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    AspectRatio(
                      aspectRatio: 0.64,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/Spider.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),

                        //SizedBox(height: 125,),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Spider-Man',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            movie_description(image: 'image/Iron.jpg'),
                      ));
                },
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    AspectRatio(
                      aspectRatio: 0.64,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/Iron.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),

                        //SizedBox(height: 125,),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Iron-Man',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            movie_description(image: 'image/Avenger.jpg'),
                      ));
                },
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    AspectRatio(
                      aspectRatio: 0.64,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/Avenger.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),

                        //SizedBox(height: 125,),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Avenger',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            movie_description(image: 'image/Thor.jpg'),
                      ));
                },
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    AspectRatio(
                      aspectRatio: 0.64,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/Thor.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),

                        //SizedBox(height: 125,),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Thor',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            movie_description(image: 'image/Dragonball.jpg'),
                      ));
                },
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    AspectRatio(
                      aspectRatio: 0.64,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/Dragonball.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),

                        //SizedBox(height: 125,),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Dragonball',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            movie_description(image: 'image/Thor.jpg'),
                      ));
                },
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    AspectRatio(
                      aspectRatio: 0.64,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/Thor.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),

                        //SizedBox(height: 125,),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Thor',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.black,
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            movie_description(image: 'image/Kung.jpg'),
                      ));
                },
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    AspectRatio(
                      aspectRatio: 0.64,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/Kung.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),

                        //SizedBox(height: 125,),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Kung',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
