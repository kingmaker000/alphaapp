import 'package:alpha_app/dummy_data/companydata.dart';
import 'package:alpha_app/pages/home_page.dart';
import 'package:alpha_app/pages/section_of_service.dart';
import 'package:alpha_app/pages/typeof_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './pages/login_page.dart';
import './pages/create_account.dart';

void main(){
  runApp(AlphaApp());
}

class AlphaApp extends StatelessWidget {
  const AlphaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (cntx) =>CompanyData(),
        child: MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.blue[200],
        fontFamily: 'Uchen',
      ),
      routes:{
        LoginPage.routename:(cntx) => LoginPage(),
        CreateAccount.routename:(cntx)=> CreateAccount(),
        HomePage.routename:(cntx) => HomePage(),
        TypeOfServices.routename:(cntx) =>TypeOfServices(),
        SectionPage.routename:(cbtx) => SectionPage()
      },
      home: LoginPage(),
    )
    );
  }
}
