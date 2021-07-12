import 'package:alpha_app/pages/create_account.dart';
import 'package:alpha_app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const routename = '/login-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'alpha services',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'ZenTokyoZoo',
              fontSize: 50,
              decorationColor: Colors.lightBlue,
              color: Colors.black54,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            margin: EdgeInsets.all(50),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(labelText: 'Email id'),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter email id';
                      }
                      if(!value.contains('@') || !value.endsWith('.com')){
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please enter the password';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushReplacementNamed(HomePage.routename);
                }, child: Text('Login')),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(CreateAccount.routename);
                    },
                    child: Text('Create new account')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
