import 'package:flutter/material.dart';

class LaundaryCare extends StatefulWidget {

  @override
  _LaundaryCareState createState() => _LaundaryCareState();
}

class _LaundaryCareState extends State<LaundaryCare> {
  List<IconData> listIcon = [
    Icons.tune,
    Icons.wheelchair_pickup,
    Icons.delivery_dining,
    Icons.local_shipping,
  ];
  List<String> textIcon = ['Filter', 'Pickup', 'Delivery', 'Shipping'];
  List<String> itemImage = [
    'assets/images/detergent.png',
    'assets/images/serum.png',
    'assets/images/shampoo.png',
    'assets/images/bleach.png',
    'assets/images/detergent(1).png'
  ];
  List<String> itemText = [
    'Lauandary detergent',
    'Fabric softener',
    'Scent boosters',
    'Bleach',
    'Wash'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColor,),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Laundary Care',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(),
              Container(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listIcon.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: 150,
                      height: 100,
                      child: ListTile(
                        leading: Icon(
                          listIcon[index],
                          color: Theme.of(context).primaryColor,
                        ),
                        title: Text(
                          textIcon[index],
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 140,
                child: ListView.builder(
                  itemCount: itemText.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      width: 90,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                child: Image.asset(itemImage[index]),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                itemText[index],
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Center(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, bottom: 10),
                            child: Image.asset('assets/images/detergent.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, right: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$50 off',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                Text(
                                  'Tide liquid laundary detergent',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                Text(
                                  'MFR single-use Coupon',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.add,
                            color: Theme.of(context).primaryColor,
                            size: 24,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, bottom: 10),
                            child: Image.asset('assets/images/serum.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, right: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$50 off',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                Text(
                                  'Tide liquid laundary detergent',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                Text(
                                  'MFR single-use Coupon',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.add,
                            color: Theme.of(context).primaryColor,
                            size: 24,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15, left: 5, bottom: 15),
                          child: Container(
                              width: 100,
                              height: 100,
                              child: Image.asset('assets/images/detergent.png')),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15, right: 10, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$95.56 - \$85.69',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4,),
                              Text('at San Francisco CBD East',style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 4,),
                              Text('original high efficiency'),
                              SizedBox(height: 4,),
                              Text('Liquid Laundary detergent'),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent[400],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent[400],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent[400],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent[400],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellowAccent[400],
                                  ),
                                  Text('1661',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.only(top: 15, left: 5, bottom: 15),
                          child: Container(
                              width: 100,
                              height: 100,
                              child: Image.asset('assets/images/shampoo.png')),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(top: 15, right: 10, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$95.56 - \$85.69',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4,),
                              Text('at San Francisco CBD East',style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 4,),
                              Text('original high efficiency'),
                              SizedBox(height: 4,),
                              Text('Liquid Laundary detergent'),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent[400],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent[400],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent[400],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent[400],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellowAccent[400],
                                  ),
                                  Text('1661',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
