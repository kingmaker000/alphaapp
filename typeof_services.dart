import 'package:alpha_app/dummy_data/companydata.dart';
import 'package:alpha_app/pages/section_of_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TypeOfServices extends StatelessWidget {
  //const TypeOfServices({Key? key}) : super(key: key);
  static const routename='/types-of-services';

  @override
  Widget build(BuildContext context) {
    final typeprovider=Provider.of<CompanyData>(context).getdata();
    final name=ModalRoute.of(context)!.settings.arguments as String;
    final types=typeprovider.where((element) => element.category==name).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$name '),
        backgroundColor: Color.fromRGBO(0, 204, 204, 2),
      ),
      backgroundColor: Color.fromRGBO(153, 255, 255, 1),
      body: ListView.builder(itemBuilder: (context,index) =>
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white54),
          child: ListTile(leading: Icon(Icons.arrow_forward_ios),
          title: Text('${types[index].type}'),
            onTap: (){
            Navigator.of(context).pushNamed(SectionPage.routename,arguments: types[index].type);
            },
          ),
        ),
        itemCount: types.length,),
    );
  }
}
