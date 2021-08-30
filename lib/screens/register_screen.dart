import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:target/screens/bottomnavi.dart';
import 'package:target/screens/sign_in.dart';
import 'package:target/screens/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  String email;
  String name;
  String password;
  String repassword;
  FirebaseAuth instance = FirebaseAuth.instance;
  var registerKey = GlobalKey<ScaffoldState>();
  @override
  // void initState() {
  //   super.initState();
  //   instance.authStateChanges().listen((User user) {
  //     if(user == null){
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
  //       // print('no user');
  //     }else{
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Bottomnavi()));
  //     }
  //   });
  // }
  Widget text1(_text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 10),
      child: Text(
        _text,
        style: TextStyle(color: Colors.grey[700], fontSize: 15),
      ),
    );
  }

  Widget textForm(
    String _hint,
    _validate,
    var onchange,
    TextEditingController controller,
  ) {
    return Container(
      height: 40,
      child: TextFormField(
        controller: controller,
        onChanged: onchange,
        cursorColor: Theme.of(context).primaryColor,
        cursorHeight: 20,
        validator: (value) {
          if (value.isEmpty) {
            return _validate;
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: _hint,
          hintStyle: TextStyle(color: Colors.grey[500]),
          contentPadding: EdgeInsets.only(top: 20, left: 20),
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }

  Widget textFormpass(
    _hint,
    _validate,
    var on_change,
    TextEditingController _controller,
  ) {
    return Container(
      height: 40,
      child: TextFormField(
        controller: _controller,
        onChanged: on_change,
        obscureText: true,
        cursorColor: Theme.of(context).primaryColor,
        cursorHeight: 20,
        validator: (value) {
          if (value.isEmpty) {
            return _validate;
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: _hint,
          hintStyle: TextStyle(color: Colors.grey[500]),
          contentPadding: EdgeInsets.only(top: 20, left: 20),
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }

  final formKey = GlobalKey<FormState>();
  var x = true;
  var iconF = Icons.check_box;
  var icon = Icons.check_box_outline_blank;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: registerKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SplashScreen()));
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Theme.of(context).primaryColor,
                          )),
                      Text(
                        'SIGN UP',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text('Welcome back',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                  SizedBox(height: 5),
                  Text('Continue to sign up!',
                      style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 24)),
                  SizedBox(
                    height: 45,
                  ),
                  text1('NAME'),
                  textForm('Your Name', 'Name Requried', (value) {
                    name = value;
                  }, nameController),
                  SizedBox(
                    height: 20,
                  ),
                  text1('EMAIL'),
                  textForm('Your Email', 'Email Requried', (value) {
                    email = value;
                  }, emailController),
                  SizedBox(
                    height: 20,
                  ),
                  text1('PASSWORD'),
                  textFormpass('Your Password', 'Password required', (value) {
                    password = value;
                  }, passwordController),
                  SizedBox(
                    height: 20,
                  ),
                  text1('RE PASSWORD'),
                  textFormpass('Your Password Again', 'Password required',
                      (value) {
                    repassword = value;
                  }, repasswordController),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              x = !x;
                            });
                          },
                          child: Icon(
                            x ? icon : iconF,
                            color: Theme.of(context).primaryColor,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'By signing up you agree to our terms &',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'conditions & privacy policy',
                            style: TextStyle(color: Theme.of(context).primaryColor,),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      if (formKey.currentState.validate()) {
                        print(nameController.text);
                        print(emailController.text);
                        print(passwordController.text);
                        print(repasswordController.text);
                      }
                      try {
                        UserCredential credential =
                            await instance.createUserWithEmailAndPassword(
                                email: email, password: password);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bottomnavi()));
                      } on FirebaseAuthException catch (error) {
                        if (error.code == 'weak-password') {
                          registerKey.currentState.showSnackBar(SnackBar(
                            content: Text('weak password'),
                          ));
                        } else if (error.code == 'email-already-in-use') {
                          registerKey.currentState.showSnackBar(SnackBar(
                            content: Text('email already in use'),
                          ));
                        }
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColor,),
                      child: Center(
                        child: Text('Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account?',
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: Text(
                            'Sign in',
                            style:
                                TextStyle(color: Theme.of(context).primaryColor, fontSize: 16),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
