import 'package:alpha_app/dummy_data/companydata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SectionPage extends StatelessWidget {
  //const SectionPage({Key? key}) : super(key: key);
  static const routename = '/sections-of-services';

  @override
  Widget build(BuildContext context) {
    final sectionprovider = Provider.of<CompanyData>(context).getdata();
    final typename = ModalRoute.of(context)!.settings.arguments as String;
    final sectionnames =
        sectionprovider.where((element) => element.type == typename).toList();
    print(sectionnames.length);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Services',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            //SizedBox(height: 1,),
            Text(
              '$typename',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(0, 204, 204, 1),
      ),
      backgroundColor: Color.fromRGBO(153, 255, 255, 1),
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, i) => Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white54, borderRadius: BorderRadius.circular(15)),
            height: 170,
            child: Column(
              children: [
                Text('${sectionnames[index].section}'),
                Divider(),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                      '${sectionnames[index].vendors['vendor${i + 1}']!['name']}'),
                  subtitle: Text(
                      '${sectionnames[index].vendors['vendor${i + 1}']!['place']}, ${sectionnames[index].vendors['vendor${i + 1}']!['state']}'),
                  trailing: Container(
                    height: 130,
                    child: Column(
                      children: [
                        Icon(Icons.call),
                        Text(
                          '${sectionnames[index].vendors['vendor${i + 1}']!['contact']}',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(width: double.infinity,
                  child: TextButton(onPressed: (){},child: Text('Select Vendor',style: TextStyle(color: Colors.black),),),
                ),
              ],
            ),
          ),
          itemCount: sectionnames[index].vendors.length,
        ),
        itemCount: sectionnames.length,
      ),
    );
  }
}
