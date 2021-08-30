import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget row(var _icon, String _text) {
  return Row(
    children: [
      Icon(
        _icon,
        size: 30,
      ),
      Text(_text, style: TextStyle(fontSize: 15)),
    ],
  );
}


Widget rowWithoutIcon( String _text) {
  return Row(
    children: [
    
      Text(_text, style: TextStyle(fontSize: 17)),
    ],
  );
}

Widget line() {
  return Container(
    color: Colors.grey[500],
    height: 25,
    width: 0.5,
  );
}

Widget text2(_text) {
  return Text(
    _text,
    style: TextStyle(
        fontSize: 21, color: Colors.red[800], fontWeight: FontWeight.w600),
  );
}

Widget type(_image, _name) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 25),
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(_image), fit: BoxFit.cover)),
            ),
            Text(
              _name,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 21),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 17,
          color: Colors.grey,
        )
      ],
    ),
  );
}

Widget line2() {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      color: Colors.black,
      height: 0.1,
      width: 120);
}

Widget line3() {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.black,
      height: 0.1,
      width: 120);
}

Widget headtype() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              child: Center(
                child: Text(
                  'DEALS',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              margin: EdgeInsets.only(right: 25),
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.red[800],
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Text(
              'Deals & Exclusives',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 21),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 17,
          color: Colors.grey,
        )
      ],
    ),
  );
}

Widget title(_title){
  return Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 25),
                child: Text(
                  _title,
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.red[800],
                      fontWeight: FontWeight.w600),
                ),
              );
}

Widget lastRaw(image,tex){
  return Column( 
        children: [
          Container(width: 30,height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.transparent,
              border: Border.all(width: 1,color: Colors.black)
            ),
            child: Center(
              child: Image.asset(image,width: 100,height: 100,),
            ),
          ),
          SizedBox(height: 5,),
          Text(tex)
        ],
      );
}


