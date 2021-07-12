import 'package:alpha_app/dummy_data/companydata.dart';
import 'package:alpha_app/pages/login_page.dart';
import 'package:alpha_app/pages/typeof_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  static const routename='/home-page';

  /*Future<void> call()async{
    try{
      ByteData data = await rootBundle.load("assets/spreadsheet/CompanyData.xlsx");
      var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      var excel = Excel.decodeBytes(bytes);
      for (var table in excel.tables.keys) {
        print(table); //sheet Name
        print(excel.tables[table]!.maxCols);
        print(excel.tables[table]!.maxRows);
        for (var row in excel.tables[table]!.rows) {
          print("$row");
        }
      }
    }catch(error){
      print(error.toString());
    }

  }*/

  @override
  Widget build(BuildContext context) {
    final dataprovider=Provider.of<CompanyData>(context);
    final catdata=dataprovider.getdata();
    return Scaffold(
      appBar: AppBar(
        title: Text('Alpha Services'),
        backgroundColor: Color.fromRGBO(0, 204, 204, 2),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.cyanAccent[200],
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 5),
                child:  Text('Menu',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            Divider(),
            SizedBox(height: 10,),
            Column(
              children: [
                Container(
                  child: IconButton(onPressed: (){
                    Navigator.of(context).pushReplacementNamed(LoginPage.routename);
                  }, icon: Icon(Icons.logout)),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(153, 255, 225, 1),
      body:Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            color: Color.fromRGBO(153, 255, 255, 1),
            child: Text('Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black54,
            ),),
          ),
          Expanded(
            child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white54),
                    child: ListTile(
                      leading: Icon(Icons.settings,size: 30,),
                      title: Text('Automobile',style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Uchen',
                      ),
                      ),
                      onTap: (){
                        Navigator.of(context).pushNamed(TypeOfServices.routename,arguments: 'Automobile');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white54),
                    child: ListTile(
                      leading: Icon(Icons.home_outlined,size: 30,),
                      title: Text('My Sweet Home',style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Uchen',
                      ),
                      ),
                      onTap: (){
                        Navigator.of(context).pushNamed(TypeOfServices.routename,arguments: 'My sweet home');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white54),
                    child: ListTile(
                      leading: Icon(Icons.face,size: 30,),
                      title: Text('Beauty and Fashion',style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Uchen',
                      ),
                      ),
                      onTap: (){
                        Navigator.of(context).pushNamed(TypeOfServices.routename,arguments: 'beauty and fashion');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white54),
                    child: ListTile(
                      leading: Icon(Icons.mobile_friendly,size: 30,),
                      title: Text('Electronics',style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Uchen',
                      ),
                      ),
                      onTap: (){
                        Navigator.of(context).pushNamed(TypeOfServices.routename,arguments: 'Electronics');
                      },
                    ),
                  ),
                ],
            ),
          ),
        ],
      )
    );
  }
}
