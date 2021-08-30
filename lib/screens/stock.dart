import 'package:flutter/material.dart';

class Stock extends StatefulWidget {
  @override
  _StockState createState() => _StockState();
}

class _StockState extends State<Stock> {
  int select_product = 0;
  Widget productCard({String text, int index, bool isSelected}) {
    return InkWell(
      onTap: () {
        setState(() {
          select_product = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          height: 30,
          child: Center(child: Text(text)),
          decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: select_product == index ? Theme.of(context).primaryColor : Colors.grey,width: 2)),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> productList = [
    {
      'text': '46 fl oz',
      'is selected': true,
    },
    {
      'text': '15 fl oz',
      'is selected': false,
    },
    {
      'text': '85 fl oz',
      'is selected': false,
    },
    {
      'text': '145 fl oz',
      'is selected': false,
    },
    {
      'text': '118 fl oz',
      'is selected': false,
    }
  ];
  List slider = [
    {
      'image': 'assets/images/detergent.png',
      'text': 'Fabric softener',
    },
    {
      'image': 'assets/images/serum.png',
      'text': 'Scent boosters',
    },
    {
      'image': 'assets/images/shampoo.png',
      'text': 'Bleach',
    },
    {'image': 'assets/images/bleach.png', 'text': 'Wash'},
    {
      'image': 'assets/images/detergent(1).png',
      'text': 'Lauandary detergent',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColor,),
                ),
                SizedBox(
                  width: 35,
                ),
                Column(
                  children: [
                    Text(
                      'San Francisco CBD East',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'in stock in aisel B2',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(Icons.cloud_upload)
              ],
            ),
          ),
          Divider(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 320,
            child: PageView.builder(
              itemBuilder: (context, index) => ImageSlider(
                list: slider[index],
              ),
              itemCount: slider.length,
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text(
                'size - 92 fl oz',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],),
          ),
          SizedBox(height: 20,),
          Container(

            height: 65,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productList.length,
                itemBuilder: (context, i) => productCard(
                    text: productList[i]['text'],
                    index: i,
                    isSelected: productList[i]['is selected'])),
          ),
          SizedBox(height: 30,),
          Container(
            width: MediaQuery.of(context).size.width,
           child: Padding(
             padding: const EdgeInsets.all(15),
             child: Column(children: [
               Text('Tide original high efficiency liquid laundary detergent - 92 fl oz',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
               Padding(
                 padding: const EdgeInsets.only(top: 15,),
                 child: Row(children: [
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
                   Text('(1661) |'),
                   Text('5 Questions',style: TextStyle(color: Colors.grey),)
                 ],),
               )
             ],),
           ),
          )
        ],
      ),
    ));
  }
}

class ImageSlider extends StatelessWidget {
  final list;

  ImageSlider({this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                      width: 200,
                      height: 150,
                      child: Image.asset('${list['image']}')),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${list['text']}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
