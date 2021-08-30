import 'package:flutter/material.dart';
import 'package:target/screens/screen2.dart';
import 'package:target/screens/shopping_today.dart';

class ToGo extends StatefulWidget {
  @override
  _ToGoState createState() => _ToGoState();
}

class _ToGoState extends State<ToGo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Step 1 of 2',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                  Text(
                    'Privacy',
                    style: TextStyle(color: Colors.blue[800], fontSize: 18),
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.seekpng.com/png/full/281-2818583_cake1-illustration-home-vector.png'))),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Non-contact shopping is',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'available in your area',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Container(
                  child: Row(
                    children: [
                      Image.network(
                        'https://icon-library.com/images/774641548b.png',
                        width: 70,
                        height: 60,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Drive Up',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'Always free',
                            style: TextStyle(color: Colors.red[800], fontSize: 15),
                          ),
                          Text(
                            'No signature required',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            'trunk for you,too',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1.5,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.5))
                      ]),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingToday()));
                        },
                        child: Text(
                    'Got It !',
                    style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                  ),
                      )),
                  decoration: BoxDecoration(
                      color: Colors.red[800],
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
