import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5)
          ),
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Show my barcode',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding:const EdgeInsets.all(0) ,
          children: [
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 345,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10,top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wallet',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Pay and save in a single scan',
                      style: TextStyle(color: Colors.white,),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 220,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return targetCircle();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 10,
                          );
                        },
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      child:
                      Image(image: AssetImage('assets/images/pic2.jpg'),fit: BoxFit.cover,),),
                  ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Saved offers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text('No offers applied',style: TextStyle(color: Colors.green,fontSize: 14),),
                        ],
                      ),
                    ),
                  IconButton(onPressed: (){},icon: Icon(CupertinoIcons.forward,color: Colors.grey,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Divider(
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      child:
                      Image(image: AssetImage('assets/images/pic3.jpg'),fit: BoxFit.cover,),),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Gift cards',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text('None available',style: TextStyle(color: Colors.grey,fontSize: 14),),
                      ],
                    ),
                  ),
                  TextButton(onPressed: (){},child: Text('Add',style: TextStyle(color: Colors.blue),),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Divider(
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      child:
                      Image(image: AssetImage('assets/images/pic6.jpg'),fit: BoxFit.contain,),),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('RedCard',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text('None available',style: TextStyle(color: Colors.grey,fontSize: 14),),
                      ],
                    ),
                  ),
                  TextButton(onPressed: (){},child: Text('Add',style: TextStyle(color: Colors.blue),),)
                ],
              ),
            ),
            Divider(),
        ]
    ),
      ),
    );
  }

  targetCircle() {
    return Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(8),
        color: Colors.white,
      ),
      width: 300,
      height: 170,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              children: [
                Expanded(
                  child: Text(
                    'Target Circle',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                ),
                IconButton(onPressed: (){},icon: Icon(CupertinoIcons.forward,color: Colors.grey,))

              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                        height: 80,
                        child:
                            Image(image: AssetImage('assets/images/pic4.jpg'),fit: BoxFit.cover,)),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '20% off',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Favourite Day Ice Cream Topping',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.add,
                          color: Colors.red,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Expired Jul 24,2021',
              style: TextStyle(color: Colors.grey,fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
