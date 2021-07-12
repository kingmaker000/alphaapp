import 'package:flutter/material.dart';

class Companyitem {
  final String category;
  final String type;
  final String section;
  final Map<String, Map<String, String>> vendors;

  Companyitem(
      {required this.category,
      required this.type,
      required this.section,
      required this.vendors});
}

class CompanyData with ChangeNotifier{
  List<Companyitem> companydata = [
    Companyitem(
        category: 'Automobile',
        type: 'Mechanical',
        section: 'Tyre services',
        vendors: {'vendor1': {'name':'The Ultimate Tyres','place':'Deira','state':'dubai','contact':'0500000001'},
        'vendor2':{'name':'The Black Tyres','place':'Qusais','state':'dubai','contact':'0500000002'},
        'vendor3':{'name':'Radial Tyres','place':'Nahda','state':'dubai','contact':'0500000003'}}),
    Companyitem(
        category: 'Automobile',
        type: 'Electrical',
        section: 'Battery services',
        vendors: {'vendor1': {'name':'Top Care Services','place':'Qusais','state':'dubai','contact':'0500000005'},
          'vendor2':{'name':'Unique Batteries','place':'Al Quoze','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'The Fast Service Center','place':'Al Quoze','state':'dubai','contact':'0500000021'}}),
    Companyitem(
        category: 'My sweet home',
        type: 'Home appliances',
        section: 'installation and repair',
        vendors: {'vendor1': {'name':'Home-X Service Center','place':'Al Quoze','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Ahlan Services','place':'Deira','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'Al Haji Services','place':'Bur Dubai','state':'dubai','contact':'0500000021'}}),
    Companyitem(
        category: 'My sweet home',
        type: 'Home care',
        section: 'Professional cleaning',
        vendors: {'vendor1': {'name':'Sparkling Clean Services','place':'Nahda','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Perfect Clean Services','place':'Qusais','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'White Marble Cleaning','place':'Al Quoze','state':'dubai','contact':'0500000021'}}),
    Companyitem(
        category: 'My sweet home',
        type: 'Pet care',
        section: 'pet grooming',
        vendors: {'vendor1': {'name':'Tom and Spike Center','place':'Deira','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Talking Tom Services','place':'Jebel Ali','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'Little Bird Services','place':'Al Barsha','state':'dubai','contact':'0500000021'}}),
    Companyitem(
        category: 'beauty and fashion',
        type: 'Woman\'s beauty',
        section: 'beauty home service',
        vendors: {'vendor1': {'name':'Island Spa & Saloon','place':'Al Barsha','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'The Beijing Center','place':'Deira','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'Vanishing Beauty','place':'Maina','state':'dubai','contact':'0500000021'}}),
    Companyitem(
        category: 'beauty and fashion',
        type: 'Men\'s beauty',
        section: 'Men\'s groomg service',
        vendors: {'vendor1': {'name':'Turkish Saloon','place':'Qusais','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Bombay Saloon','place':'Bur Dubai','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'The Gentleman Saloon','place':'Qusais','state':'dubai','contact':'0500000021'}}),
    Companyitem(
        category: 'Electronics',
        type: 'mobile phones',
        section: 'Mobile phone repair',
        vendors: {'vendor1': {'name':'Beta Mobiles','place':'Karama','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Lamda Mobile Center','place':'Muhaisinah','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'Phone-X Mobiles','place':'Rashidiya','state':'dubai','contact':'0500000021'}}),
    Companyitem(
        category: 'Electronics',
        type: 'Tablet',
        section: 'Tablet Reapair',
        vendors: {'vendor1': {'name':'Beta Mobiles','place':'Karama','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Lamda Mobile Center','place':'Muhaisinah','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'Phone-X Mobiles','place':'Rashidiya','state':'dubai','contact':'0500000021'}}),


  ];

  List<Companyitem> getdata(){
    return companydata;
  }
}
