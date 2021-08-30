import 'package:flutter/material.dart';
import 'package:target/screens/discover.dart';
import 'package:target/screens/discoverWidgets.dart';

class Woman extends StatefulWidget {
  @override
  _WomanState createState() => _WomanState();
}

class _WomanState extends State<Woman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.search, color: Colors.white),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 51,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        rowWithoutIcon('Category'),
                        line(),
                        rowWithoutIcon('Sort'),
                        line(),
                        rowWithoutIcon('Filter'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 0.2,
              color: Colors.black.withOpacity(0.7),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 50,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: MediaQuery.of(context).size.height /
                            MediaQuery.of(context).size.width /
                            3.5,
                        crossAxisCount: 2),
                    itemBuilder: (builder, context) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 190,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                color: Colors.orange,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.cliqueinc.com/posts/279275/best-selling-white-t-shirt-279275-1555639760031-main.700x0c.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('File Corette T-Shirt',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('16\$',
                                      style: TextStyle(
                                          color: Colors.red[800],
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('was 2\$',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(''),
                                      Icon(
                                        Icons.favorite_border_outlined,
                                        size: 30,
                                        color: Colors.grey,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
