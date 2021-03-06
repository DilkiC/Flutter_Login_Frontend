import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_login_form/screens/Signup/signup.dart';
import 'package:flutter_login_form/screens/Welcome/welcome.dart';

class Login extends StatefulWidget{
  //const Login({Key key}) : super(key: key);

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login>{
  //final _formKey = GlobalKey<FormState>();

@override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body: Center(
        //padding: const EdgeInsets.all(16.0),
      //key: _formKey,
      
      child: Column(
        children: <Widget>[
          // Add TextFormFields and ElevatedButton here.
          /* Container(
            child:  Image.asset(
              'images/main_bottom.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
              ),

          ), */
          
          Container(
          padding: EdgeInsets.symmetric(horizontal: 0,vertical:50, ),  

          child:Text("Login",
            style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
               color: Colors.white,
               
               
               ),
            ),
          ),
          Container(
            width:200 ,
            //alignment: Alignment(3,5),
            
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10.0) 
              ),
            padding: EdgeInsets.symmetric(horizontal: 5,vertical:16 ),  
            child:TextField(
              //autofocus: true,
              style: TextStyle(
              ),
             // The validator receives the text that the user has entered.
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                
               ),//underlineInputBorder
              hintText: 'Enter your email',
            ),
            
            )
          ),

           Container(
            width:200 ,
            //alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10.0) 
              ),
            padding: EdgeInsets.symmetric(horizontal: 5,vertical:16 ),  
              child:TextField(
              
              style: TextStyle(
              ),
             // The validator receives the text that the user has entered.
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                
               ),//underlineInputBorder
              hintText: 'Password',
            ),
            
            )
          ),

          Container(
            width: 200,
            padding: EdgeInsets.symmetric(horizontal: 5,vertical:16 ),  
            
            child: ElevatedButton(
              
              onPressed: (){

              },
              child: const Text('Sign in'),
            ),
          ),

          Container(
            child:  IconButton(icon: Icon(Icons.next_plan),color: Colors.white, 
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return Signup();
                    },
                  ),
                );
              },
              ),

          ),

          Container(
            child:  IconButton(icon: Icon(Icons.arrow_back),color: Colors.white, 
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return Welcome();
                    },
                  ),
                );
              },
              ),

          ),

          Container(
            //alignment: Alignment.bottomLeft,
            child:  Image.asset(
              'images/login_bottom.png',
              width: 1000,
              height: 126,
              fit: BoxFit.cover,
              ),

          ),
          

            
        ],
      ),
      )
    );
  }
}
  /* @override
  Widget build(BuildContext context){
    return Scaffold(
     body: Center(
       child:Text("Login"),
     )
    );
  } */
