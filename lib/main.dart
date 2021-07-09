import 'package:alpha_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import './pages/login_page.dart';
import './pages/create_account.dart';

void main(){
  runApp(AlphaApp());
}

class AlphaApp extends StatelessWidget {
  const AlphaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.blue[200],
      ),
      routes:{
        LoginPage.routename:(cntx) => LoginPage(),
        CreateAccount.routename:(cntx)=> CreateAccount(),
        HomePage.routename:(cntx) => HomePage()
      },
      home: LoginPage(),
    );
  }
}
