import 'package:flutter/material.dart';
import 'package:flutterwidgets/home.dart';


class MyForm extends StatefulWidget{
  @override
  _MyFormState createState()=> _MyFormState();
}


class _MyFormState extends State<MyForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.network(
                        'https://i.pinimg.com/originals/49/40/ad/4940ad11e28bc2ed92bad9b592f53e3d.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.person),
                        hintText: 'Enter your Name',
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.phone),
                        hintText: 'Enter a Phone Number',
                        labelText: 'Phone',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.calendar_today),
                        hintText: 'Enter your date of birth',
                        labelText: 'Date Of Birth',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: RaisedButton(
                        color: Colors.red,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => home(),
                          ));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text('Register',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),


      ),
    );
  }
}