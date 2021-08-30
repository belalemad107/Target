import 'package:flutter/material.dart';
import 'package:target/screens/discover.dart';

class Deals extends StatefulWidget {

  @override
  _DealsState createState() => _DealsState();
}

class _DealsState extends State<Deals> {
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
          Center(child: Text('Remember we are always open online. Shop 24/7')),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 30),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.65,
            color: Colors.transparent,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://thumbs.dreamstime.com/b/cheerful-black-man-riding-his-cute-little-daughter-shoulders-happy-family-orange-studio-background-150710063.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 210),
                  width: 250,
                  height: 250,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('BETTER',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 45)),
                        Text('BUYS',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40)),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.red[800],
                      borderRadius: BorderRadius.circular(150)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 200, top: 320),
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(150)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('CHECK OUT OUR',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        Text('LATEST DEALS,',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        Text('DISCOUNTS &',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        Text('OFFERS BELOW',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text('F E A T U R E D   D E A L S',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://cdn.shopify.com/s/files/1/0487/2349/3013/products/zap-stun-cane-with-flashlight-1-million-volts-3_grande.jpg?v=1602710206'),
                              fit: BoxFit.cover)),
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(150)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$259',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15)),
                            Text('EACH',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                            Text('SAVE \$70',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0272/9476/1037/products/PhotoGrid_Plus_1621980575729_800x.jpg?v=1621980940'),
                              fit: BoxFit.cover)),
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(150)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$259',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15)),
                            Text('EACH',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                            Text('SAVE \$70',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://a-static.mlcdn.com.br/1500x1500/iluminador-ring-light-com-tripe-88cm-de-altura-e-27cm-de-led-mbtech/dazbrasil/9604741396/ac924c41e48dfa8af84d34857a53a437.jpg'),
                              fit: BoxFit.cover)),
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(150)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$259',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15)),
                            Text('EACH',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                            Text('SAVE \$70',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://m.media-amazon.com/images/I/717MdUOzbwL._AC_SL1500_.jpg'),
                              fit: BoxFit.cover)),
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(150)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$259',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15)),
                            Text('EACH',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                            Text('SAVE \$70',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://cdn.shopify.com/s/files/1/0487/2349/3013/products/zap-stun-cane-with-flashlight-1-million-volts-3_grande.jpg?v=1602710206'),
                              fit: BoxFit.cover)),
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(150)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$259',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15)),
                            Text('EACH',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                            Text('SAVE \$70',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0272/9476/1037/products/PhotoGrid_Plus_1621980575729_800x.jpg?v=1621980940'),
                              fit: BoxFit.cover)),
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(150)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$259',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15)),
                            Text('EACH',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                            Text('SAVE \$70',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://a-static.mlcdn.com.br/1500x1500/iluminador-ring-light-com-tripe-88cm-de-altura-e-27cm-de-led-mbtech/dazbrasil/9604741396/ac924c41e48dfa8af84d34857a53a437.jpg'),
                              fit: BoxFit.cover)),
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(150)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$259',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15)),
                            Text('EACH',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                            Text('SAVE \$70',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://m.media-amazon.com/images/I/717MdUOzbwL._AC_SL1500_.jpg'),
                              fit: BoxFit.cover)),
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 20),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(150)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$259',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15)),
                            Text('EACH',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                            Text('SAVE \$70',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
