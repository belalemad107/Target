import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:target/screens/baby.dart';
import 'package:target/screens/deals.dart';
import 'package:target/screens/entertainment.dart';
import 'package:target/screens/home.dart';
import 'package:target/screens/kids.dart';
import 'package:target/screens/men.dart';
import 'package:target/screens/toys.dart';
import 'package:target/screens/women.dart';
import 'package:target/screens/offer1.dart';
import 'package:target/screens/offer2.dart';
import 'package:target/screens/offer3.dart';
import 'package:target/screens/offer4.dart';
import 'package:target/screens/discoverWidgets.dart';
import 'package:target/screens/findStore.dart';
import 'package:url_launcher/url_launcher.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  int _selectedIndex = -1;
  List offferScreens = [Offer1(), Offer2(), Offer3(), Offer4()];
  var url = 'https://www.target.com/';
  var secondUrl = 'https://www.target.com.au/search?text=sale&sEngine=c';
  List images = [
    'https://images.pexels.com/photos/5868272/pexels-photo-5868272.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://img.freepik.com/free-vector/painted-banner-black-friday_21799-4034.jpg?size=338&ext=jpg',
    'https://images.pexels.com/photos/3865911/pexels-photo-3865911.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'
  ];
  List images2 = [
    'https://img.freepik.com/free-vector/creative-fashion-sale-landing-page_23-2148593379.jpg?size=626&ext=jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-68ls2e8efI0AevclCanxM67-8Cfg_WXxqEQp5pFU0JBxa2FeeqRrLWpNSWfgxW57RA&usqp=CAU',
    'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/33234650700333.58d88a71f123e.png',
    'https://ecattus.lv/wp-content/uploads/2020/05/1-en-eccatus-banner-17.05.png',
    'https://cdn.nohat.cc/thumb/f/720/821edfac58ed4ed4bdb9.jpg'
  ];
  List type1 = [
    'https://images.pexels.com/photos/1462637/pexels-photo-1462637.jpeg?cs=srgb&dl=pexels-anastasiya-gepp-1462637.jpg&fm=jpg',
    'https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/4055337/pexels-photo-4055337.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/786220/pexels-photo-786220.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/189333/pexels-photo-189333.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/106144/rubber-duck-bath-duck-toys-costume-106144.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/5961216/pexels-photo-5961216.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
  ];
  List offers = [
    'https://s13emagst.akamaized.net/products/31014/31013496/images/res_95713416ad205260a0f7f73ce30cd135.jpg',
    'https://cdn.shopify.com/s/files/1/0275/2492/3444/products/4_2_Indigaming_Poga_Pro_Black_Studio_Rendering_3680x.jpg?v=1606777819',
    'https://cdn.shopify.com/s/files/1/0029/5849/1748/products/DualSense-Cosmic-Red-front_580x.png?v=1621243301',
    'https://atlas-content-cdn.pixelsquid.com/stock-images/stand-mixer-7G3NBL5-600.jpg'
  ];
  List offernames = ['Fifa 21', 'Games Sentinel', 'Controller', 'Blender'];
  String _scanBarcode = 'Unknown';
  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, left: 20),
            color: Theme.of(context).primaryColor,
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Target Australia',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => FindStore()));
                    },
                    child: row(Icons.place_outlined, 'Find Store')),
                line(),
                InkWell(
                    onTap: () {
                      scanQR();
                    },
                    child: row(Icons.qr_code_scanner, 'Scan')),
                line(),
                row(Icons.search, 'Search'),
              ],
            ),
          ),
          Container(
            color: Colors.grey[500],
            height: 0.3,
            width: MediaQuery.of(context).size.width,
          ),
          Expanded(
              child: ListView(
            children: [
              Container(
                color: Colors.grey[200],
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/bag.jpg'),
                              fit: BoxFit.cover),
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text2('Collect stamps and earn'),
                          text2('rewards with target shop'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'sign up for free >',
                            style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              title('Shop'),
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () async {
                          await launch(url);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 210,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(images[index]),
                                  fit: BoxFit.cover)),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Deals()));
                  },
                  child: headtype()),
              line2(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Woman()));
                  },
                  child: type(type1[0], 'Women')),
              line2(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Men()));
                  },
                  child: type(type1[1], 'Men')),
              line2(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Kids()));
                  },
                  child: type(type1[2], 'Kids')),
              line2(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Baby()));
                  },
                  child: type(type1[3], 'Baby')),
              line2(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: type(type1[4], 'Home')),
              line2(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Toys()));
                  },
                  child: type(type1[5], 'Toys')),
              line2(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Enter()));
                  },
                  child: type(type1[6], 'Entertainment')),
              line2(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: title('Top Offers'),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Center(
                        child: Text(
                          'see more',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.grey[800]),
                        ),
                      ),
                      margin: EdgeInsets.only(right: 20),
                      width: 110,
                      height: 45,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black.withOpacity(0.7))),
                    ),
                  ),
                ],
              ),
              Container(
                height: 270,
                width: 100,
                color: Colors.transparent,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: offers.length,
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => offferScreens[index]));
                        },
                        child: Container(
                          height: 100,
                          width: 180,
                          margin: EdgeInsets.only(left: 20),
                          color: Colors.transparent,
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.network(offers[index]),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          offernames[index],
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          'product',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          '\$89',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 18,
                                              color: Theme.of(context)
                                                  .primaryColor),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Was \$109',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedIndex = index;
                                                  });
                                                },
                                                child: Icon(
                                                  _selectedIndex == index
                                                      ? Icons.favorite
                                                      : Icons
                                                          .favorite_border_outlined,
                                                  color: _selectedIndex == index
                                                      ? Theme.of(context)
                                                          .primaryColor
                                                      : Colors.grey,
                                                  size: 35,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  width: 170,
                                  height: 260,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(3, 5),
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 7),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              title('Latest Inspiration'),
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images2.length,
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () async {
                          await launch(secondUrl);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 210,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(images2[index]),
                                  fit: BoxFit.cover)),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              title('Contact us'),
              line3(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    lastRaw('assets/images/facebook.png', 'Facebook'),
                    line(),
                    lastRaw('assets/images/twitter.png', 'Twitter'),
                    line(),
                    lastRaw('assets/images/instagram.png', 'Instgram'),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              line3(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Customer support opennig hours',
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        'Monday-Friday 9 AM to 7 PM',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                      Text(
                        'Satyrdat 9 AM to 5 PM',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
              line3(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Facebook_icon_2013.svg/1024px-Facebook_icon_2013.svg.png',
                      width: 30,
                      height: 30,
                    ),
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/600px-Instagram_logo_2016.svg.png',
                      width: 30,
                      height: 30,
                    ),
                    Image.network(
                      'https://katemeets.com/wp-content/uploads/2019/12/pinterest-logo-p-png-0.png',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              line3(),
              SizedBox(height: 40),
            ],
          )),
        ],
      ),
    );
  }
}
