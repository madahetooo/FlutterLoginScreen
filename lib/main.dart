// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutterwidgets/signUp.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'home.dart';
//
// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello World Flutter Application',
//       theme: ThemeData(
//         // This is the theme of your application.
//         primarySwatch: Colors.blue,
//       ),
//       home: home(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   // MyHomePage({Key key, this.title}) : super(key: key);
//
//   // This widget is the home page of your application.
//   // final String title;
//   final TextEditingController emailController = new TextEditingController();
//   final TextEditingController passwordController = new TextEditingController();
//   final _auth = FirebaseAuth.instance;
//
//   // string for displaying the error Message
//   String? errorMessage;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "eslam",
//             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//           ),
//           leading: Icon(Icons.icecream),
//           actions: [Icon(Icons.star)],
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             children: <Widget>[
//               Container(
//                 width: 200,
//                 height: 200,
//                 child: Image.network(
//                     'https://ibwc.in/wp-content/uploads/2021/06/log.png'),
//               ),
//              TextFormField(
//                   controller: emailController,
//
//                   keyboardType: TextInputType.emailAddress,
//                   onSaved: (value) {
//                     emailController.text = value!;
//                   },
//                   decoration: InputDecoration(
//                     labelText: "Email Address",
//                     border: OutlineInputBorder(),
//                   ),
//
//                 ),
//               Padding(
//                 padding: EdgeInsets.all(20.0),
//                 child: TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: "Password",
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           begin: Alignment.bottomCenter,
//                           end: Alignment.topCenter,
//                           colors: [Colors.red, Colors.blueAccent])),
//                   child: FlatButton(
//                     child: Text(
//                       "Login",
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.bold),
//                     ),
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(
//                         builder: (context) => home(),
//                       ));
//                     },
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: RichText(
//                   text: TextSpan(
//                       text: 'Dont have an account?!',
//                       style: TextStyle(color: Colors.black, fontSize: 15),
//                       children: <TextSpan>[
//                         TextSpan(
//                             text: 'Sign Up',
//                             style: TextStyle(color: Colors.red, fontSize: 15),
//                             recognizer: TapGestureRecognizer()..onTap = () {
//                               Navigator.push(context, MaterialPageRoute(
//                                 builder: (context) => MyForm(),
//                               ));
//                             })
//                       ]),
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }




import 'package:flutterwidgets/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email And Password Login',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
