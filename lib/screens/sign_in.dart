import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:target/screens/bottomnavi.dart';
import 'package:target/screens/register_screen.dart';
import 'package:target/screens/splash_screen.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var loginKey = GlobalKey<ScaffoldState>();
  FirebaseAuth instance = FirebaseAuth.instance;
  String email;
  String password;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = true;
  var formKey = GlobalKey<FormState>();
  bool checkValue = false;
  onChangeValue(value) {
    setState(() {
      checkValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: loginKey,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        'Sign In',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Theme.of(context).primaryColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Welcome back',
                    style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Continue to Sign In !',
                    style: TextStyle(
                        fontSize: 20, color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Email'),
                  TextFormField(
                    onChanged: (value) {
                      email = value;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Email is required";
                      } else {
                        return null;
                      }
                    },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your Email',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Password'),
                  TextFormField(
                    onChanged: (value) {
                      password = value;
                    },
                    obscureText: showPassword,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Password is required";
                      }
                    },
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: showPassword
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      hintText: 'Enter your Password',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password ?',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CheckboxListTile(
                    value: checkValue,
                    onChanged: onChangeValue,
                    title: Text(
                      'Remember me and keep me logged in',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    color: Theme.of(context).primaryColor,
                    minWidth: MediaQuery.of(context).size.width,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () async {
                      if (formKey.currentState.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                      try {
                        UserCredential credential =
                            await instance.signInWithEmailAndPassword(
                                email: email, password: password);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Bottomnavi()));
                      } on FirebaseAuthException catch (error) {
                        if(error.code == 'invalid-email'){
                          loginKey.currentState.showSnackBar(SnackBar(content: Text('invalid email')));
                          print('invalid email');
                        }
                        else if(error.code == 'user-not-found'){
                          loginKey.currentState.showSnackBar(SnackBar(content: Text('user not found'),));

                        }
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(child: Text("Don't have an account ?")),
                  Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.black),
                          )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
