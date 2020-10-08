import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Profil'),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          backgroundColor: Colors.red,
          actions: <Widget> [
            IconButton(
                icon: Icon(Icons.notifications,
                  color: Colors.white,
                  size: 30,)),
          ],
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget> [
                Gambar(),
                Detail(),
                Contact(),
                Widget1(),
                Widget2()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Gambar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/gambarku.jpeg'),
          radius: 100,
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget> [
            Text('Devanny Anggun Riantika',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget> [
            Text('devanny@undiksha.ac.id',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget> [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 18,
                      offset: Offset(-10, 5),
                      color: Colors.blue.withOpacity(.10)
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 65, top: 40),
              width: 115,
              height: 90,
              child: Card(
                child: Center(
                  child: Column(
                    children: <Widget> [
                      Icon(Icons.gps_fixed,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text('Jasri',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 18,
                      offset: Offset(10, 5),
                      color: Colors.blue.withOpacity(.10)
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 55, top: 40),
              width: 115,
              height: 90,
              child: Card(
                child: Center(
                  child: Column(
                    children: <Widget> [
                      Icon(Icons.school,
                        size: 50,
                        color: Colors.greenAccent,),
                      Text('UNDIKSHA',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget> [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20,
                      offset: Offset(0, 5),
                      color: Colors.blue.withOpacity(.10)
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 65, top: 50),
              width: 115,
              height: 90,
              child: Card(
                child: Center(
                  child: Column(
                    children: <Widget> [
                      Icon(Icons.audiotrack,
                        size: 50,
                        color: Colors.blueAccent,
                      ),
                      Text('Hobi',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                            FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 18,
                      offset: Offset(10, 5),
                      color: Colors.blue.withOpacity(.10)
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: 55, top: 50),
              width: 115,
              height: 90,
              child: Card(
                child: Center(
                  child: Column(
                    children: <Widget> [
                      Icon(Icons.card_travel,
                        size: 50,
                        color: Colors.red,),
                      Text('Travel',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}