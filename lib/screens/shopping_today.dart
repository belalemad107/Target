import 'package:flutter/material.dart';
import 'package:target/screens/laundary%20care.dart';
import 'package:target/screens/stock.dart';

class ShoppingToday extends StatefulWidget {
  @override
  _ShoppingTodayState createState() => _ShoppingTodayState();
}

class _ShoppingTodayState extends State<ShoppingToday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20),
                child: Row(children: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon((Icons.arrow_back),color: Theme.of(context).primaryColor,)),
                ],),
              ),
          Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: 250,
                    child: Text(
                      'How are you shopping today ?',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromRGBO(6, 5, 5, 20),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Image.asset('assets/images/shopping-cart.png'),
                ),
              ]),
          SizedBox(
            height: 80,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Stock()));
            },
            child: ListTile(
              leading: Image.asset('assets/images/delivery-truck.png'),
              title: Text(
                'Picking Up',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              subtitle: Text(
                  'pick up in-store, or we will bring it out to your car',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LaundaryCare()));
            },
            child: ListTile(
              leading: Image.asset('assets/images/online-shopping.png'),
              title: Text(
                'Same Day Delivery',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              subtitle: Text('Schedule delivery and we will Bring it to you',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            leading: Image.asset('assets/images/smartphone.png'),
            title: Text(
              'Make a list',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            subtitle: Text('Plan your next trip to San Francisco CBD East',
                style: TextStyle(color: Colors.black, fontSize: 18)),
          ),
        ]),
      ),
    );
  }
}
