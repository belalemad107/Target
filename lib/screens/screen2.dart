import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:target/screens/register_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "drive up",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: BackButton(
          color: Colors.red,
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 140,
              color: Colors.black54,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(children: [
                  Container(
                    child: Text(
                      'We\'ve enhanced Drive Up With your safety in mind ',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'No signature required &we\'ll load your trunk for you too',
                      maxLines: 2,
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ]),
              )),
          Container(
              color: Colors.white38,
              child: Column(children: [
                Image(
                  image: AssetImage("assets/images/drive-up.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    child: Text(
                        'order with Drive up & we\'ll bring it right out to your car.',
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                  ),
                )
              ])),
        ],
      ),
    );
  }
}
