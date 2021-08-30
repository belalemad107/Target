import 'package:flutter/material.dart';
import 'package:target/screens/discover.dart';
import 'package:target/screens/discoverWidgets.dart';

class FindStore extends StatefulWidget {

  @override
  _FindStoreState createState() => _FindStoreState();
}

class _FindStoreState extends State<FindStore> {
  List locations=['ACT','NSW','NT','QLD','SA','TAS','VIC','WA'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            height: 150,
            color: Colors.red[800],
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop(() => Discover());
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          Text(
                            'Shop',
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Store Finder',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 40,
                  child: TextFormField(
                    cursorColor: Colors.red[800],
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search postcode or suburb',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                      contentPadding: EdgeInsets.only(top: 20, left: 20),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(width: MediaQuery.of(context).size.width,height: 40,
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            child: Text('NEARBY',style: TextStyle(color: Colors.black.withOpacity(0.7)),),
          ),
          ),
         line3(),
          Container(width: MediaQuery.of(context).size.width,height: 60,
          color: Colors.white,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Turn on location services in your',style: TextStyle(fontSize: 17,color: Colors.black.withOpacity(0.4)),),
              Text('setting to see nearby stores.',style: TextStyle(fontSize: 17,color: Colors.black.withOpacity(0.4)),)
           
            ],),
            
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.info_outline_rounded,size: 30,color: Colors.blue[700],),
          )
            ],
          )
          ),
          line3(),
          Container(width: MediaQuery.of(context).size.width,height: 40,
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            child: Text('ALL STORES',style: TextStyle(color: Colors.black.withOpacity(0.7)),),
          ),
          ),
          Expanded(child: ListView.builder(itemCount: locations.length,scrollDirection: Axis.vertical,itemBuilder: (ctx,index){
            return Column(
              children: [
                Container(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Icon(Icons.maps_home_work_outlined,size: 32,color: Colors.grey[700],),
                       SizedBox(width: 10,),
                        Text(locations[index],style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 18),),
                      ],),
                      Icon(Icons.arrow_forward_ios,size: 17,color: Colors.grey,)
                    ],
                  ),
                  color: Colors.transparent,
                  height: 60,width: MediaQuery.of(context).size.width,
                ),
                Divider(thickness: 1),
              ],
            );
          })),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}
