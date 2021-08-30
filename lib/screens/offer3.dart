import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:target/screens/discover.dart';

class Offer3 extends StatefulWidget {

  @override
  _Offer3State createState() => _Offer3State();
}

class _Offer3State extends State<Offer3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.red[800],
          title: Text(
            'Shop',
            style: TextStyle(color: Colors.white),
          ),
          leading: InkWell(
              onTap: () => Navigator.of(context).pop(() => Discover()),
              child: Icon(Icons.arrow_back_ios)),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'COVID-19 update',
              style: TextStyle(color: Colors.red[800], fontSize: 18),
            )),
            SizedBox(
              height: 5,
            ),
            Center(
                child: Text('Remember we are always open online. Shop 24/7')),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.gadgets360cdn.com/large/DualSense_colourways_1620997004018.jpg?downsize=950:*&output-quality=80&output-format=webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, right: 15, left: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PS5 DualSense',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        ' Controllers',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '\$140',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.red[800],
                            fontSize: 28),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Was \$190',
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RatingBar.builder(
                    itemSize: 25,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '3.5',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 40,
                ),
                Text('Write a review'),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 50, bottom: 30),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 8,
                      offset: Offset(2, 2),
                      color: Colors.grey)
                ],
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  'Add to basket',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.local_shipping_outlined,
                    size: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Ship to store',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Targer Highpoint',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Estimated to be ready for collection ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'business days',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Check stock in other stores',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.local_shipping_outlined,
                    size: 40,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Ship to store',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'sydney international airport',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Estimated to be ready for collection ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Check stock in other stores',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'item code : 645222',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Details',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Enjoy brand new ways to play the most popular mode in FIFA as you build your dream squad of players past and present in FIFA 21 Ultimate Team',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
