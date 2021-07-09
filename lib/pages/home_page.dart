import 'package:flutter/material.dart';
import 'package:excel/excel.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  static const routename='/home-page';

  Future<void> call()async{
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

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Alpha Services'),
        centerTitle: true,
      ),
      body:Center(
        child: IconButton(icon: Icon(Icons.directions_run),onPressed: ()=>call(),),
      ),
    );
  }
}
