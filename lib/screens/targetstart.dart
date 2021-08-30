import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:target/screens/register_screen.dart';
import 'package:target/screens/sign_in.dart';

class TargetStart extends StatefulWidget {
  @override
  _TargetStartState createState() => _TargetStartState();
}

class _TargetStartState extends State<TargetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30 ,right: 10,left: 10,bottom: 5),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              child: Text('Welcome! Sign In',style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black54),
              ),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('Create account',style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
