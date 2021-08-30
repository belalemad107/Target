import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:target/screens/choose_store.dart';
import 'package:target/screens/favourites.dart';
import 'package:target/screens/register_screen.dart';
import 'package:target/screens/sign_in.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  FirebaseAuth instance = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).primaryColor,
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, user',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'user@gmail.com',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  child: IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: null,
                  ),
                  backgroundColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                      width: 70,
                      height: 40,
                      child: Image.asset("assets/images/shopping-cart.png")),
                  title: Text(
                    'Purchases',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Trick, manage and return'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: null,
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Container(
                      width: 70,
                      height: 40,
                      child: Image.asset("assets/images/home.png")),
                  title: Text(
                    'San Francisco CBD East',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Opens at 9:00 pm'),
                  trailing: TextButton(
                    child: Text(
                      'Change',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseStore()));
                    },
                  ),
                ),
                Divider(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Favourites()));
                  },
                  child: ListTile(
                    leading: Container(
                        width: 70,
                        height: 40,
                        child: Image.asset("assets/images/favourites.png")),
                    title: Text(
                      'Favourites',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left:20,right: 20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

              Text('Provide feedback',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,),
          ],),
            ),),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left:20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  TextButton(
                    onPressed: (){
                     try{
                        FirebaseAuth.instance.signOut();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                     }on FirebaseAuthException catch(error){
                       print('error');
                     }
                    },
                      child: Text('Log Out',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,),
                ],),
            ),),
        ],
      ),
    );
  }
}
