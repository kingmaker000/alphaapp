import 'package:alpha_app/pages/vendors_list_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../dummy_data/companydata.dart';

class TypesOfServices extends StatelessWidget {
  //const TypesOfServices({Key? key}) : super(key: key);
  static const routename = '/types-of-services';

  @override
  Widget build(BuildContext context) {
    final id_data = ModalRoute.of(context)!.settings.arguments;
    final companies = Provider.of<CompanyData>(context).getdata();
    final servicetypes =
        companies.where((element) => element.id == id_data).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Services'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        backgroundColor: Color.fromRGBO(0, 204, 204, 2),
      ),
      backgroundColor: Color.fromRGBO(153, 205, 205, 1),
      body: ListView.separated(
        itemBuilder: (contex, index) => Container(
          margin: EdgeInsets.all(10),
          height: 50,
          //color: Colors.white54,
          child: ListTile(
            leading: Hero(
              tag: servicetypes[index].section,
                child: ClipRRect(
              child: Image.network('${servicetypes[index].imageurl}'),
              borderRadius: BorderRadius.circular(8),
            )),
            title: Text('${servicetypes[index].section}'),
            onTap: () {
              Navigator.of(context).pushNamed(VendorsListPage.routename,
                  arguments: servicetypes[index].section);
            },
          ),
        ),
        itemCount: servicetypes.length,
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}
