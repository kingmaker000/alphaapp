import 'package:flutter/material.dart';

class Companyitem {
  final String category;
  final String type;
  final String section;
  final Map<String, Map<String, String>> vendors;
  final String id;
  final String imageurl;

  Companyitem(
      {required this.category,
      required this.type,
      required this.section,
      required this.vendors,
      required this.id,
      required this.imageurl});
}

class CompanyData with ChangeNotifier{
  List<Companyitem> companydata = [
    Companyitem(
        category: 'Automobile',
        type: 'Mechanical',
        section: 'Tyre services',
        vendors: {'vendor1': {'name':'The Ultimate Tyres','place':'Deira','state':'dubai','contact':'0500000001'},
        'vendor2':{'name':'The Black Tyres','place':'Qusais','state':'dubai','contact':'0500000002'},
        'vendor3':{'name':'Radial Tyres','place':'Nahda','state':'dubai','contact':'0500000003'}},
        id: '1',
      imageurl: 'https://thumbs.dreamstime.com/b/auto-car-repair-service-center-two-mechanics-man-woman-examining-car-engine-auto-car-repair-service-center-two-mechanics-man-166202754.jpg'

    ),
    Companyitem(
        category: 'Automobile',
        type: 'Electrical',
        section: 'Battery services',
        vendors: {'vendor1': {'name':'Top Care Services','place':'Qusais','state':'dubai','contact':'0500000005'},
          'vendor2':{'name':'Unique Batteries','place':'Al Quoze','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'The Fast Service Center','place':'Al Quoze','state':'dubai','contact':'0500000021'}},
        id: '1',
      imageurl: 'https://electricianrollinghills.com/wp-content/uploads/2019/07/installation2.jpg'
    ),
    Companyitem(
        category: 'Home Services',
        type: 'Home appliances',
        section: 'Installation and repair',
        vendors: {'vendor1': {'name':'Home-X Service Center','place':'Al Quoze','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Ahlan Services','place':'Deira','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'Al Haji Services','place':'Bur Dubai','state':'dubai','contact':'0500000021'}},
        id: '2',
        imageurl: 'https://5.imimg.com/data5/FQ/LK/MY-78410368/home-appliance-repair-500x500.jpg'),
    Companyitem(
        category: 'Home Services',
        type: 'Home care',
        section: 'Professional cleaning',
        vendors: {'vendor1': {'name':'Sparkling Clean Services','place':'Nahda','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Perfect Clean Services','place':'Qusais','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'White Marble Cleaning','place':'Al Quoze','state':'dubai','contact':'0500000021'}},
        id: '2',
        imageurl: 'https://sulcdn.azureedge.net/content/images/listings/listseo/home-cleaning-service.jpg'),
    Companyitem(
        category: 'Home Services',
        type: 'Pet care',
        section: 'Pet grooming',
        vendors: {'vendor1': {'name':'Tom and Spike Center','place':'Deira','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Talking Tom Services','place':'Jebel Ali','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'Little Bird Services','place':'Al Barsha','state':'dubai','contact':'0500000021'}},
        id: '2',
        imageurl: 'https://www.dogingtonpost.com/wp-content/uploads/2019/06/groomingtools-1024x535.jpg'),
    Companyitem(
        category: 'beauty and fashion',
        type: 'Woman\'s beauty',
        section: 'Woman\'s beauty service',
        vendors: {'vendor1': {'name':'Island Spa & Saloon','place':'Al Barsha','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'The Beijing Center','place':'Deira','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'Vanishing Beauty','place':'Maina','state':'dubai','contact':'0500000021'}},
        id: '3',
        imageurl: 'https://5.imimg.com/data5/MQ/MT/GLADMIN-34298753/ladies-hair-cutting-service-500x500.jpg'),
    Companyitem(
        category: 'beauty and fashion',
        type: 'Men\'s beauty',
        section: 'Men\'s saloon service',
        vendors: {'vendor1': {'name':'Turkish Saloon','place':'Qusais','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Bombay Saloon','place':'Bur Dubai','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'The Gentleman Saloon','place':'Qusais','state':'dubai','contact':'0500000021'}},
        id: '3',
        imageurl: 'https://content.jdmagicbox.com/comp/ooty/v7/9999px423.x423.190325145322.t8v7/catalogue/blue-mountain-mens-beauty-parlour-alms-house-road-ooty-men-beauty-parlours-0obu1nojqe.jpg'),
    Companyitem(
        category: 'Electronics',
        type: 'mobile phones',
        section: 'Mobile phone repair',
        vendors: {'vendor1': {'name':'Beta Mobiles','place':'Karama','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Lamda Mobile Center','place':'Muhaisinah','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'Phone-X Mobiles','place':'Rashidiya','state':'dubai','contact':'0500000021'}},
        id: '4',
        imageurl: 'https://content.jdmagicbox.com/comp/def_content/mobile_phone_Repair_and_services/default-mobile-phone-repair-services-217.jpg?clr=422e24'),
    Companyitem(
        category: 'Electronics',
        type: 'Tablet',
        section: 'Tablet Reapair',
        vendors: {'vendor1': {'name':'Beta Mobiles','place':'Karama','state':'dubai','contact':'0500000007'},
          'vendor2':{'name':'Lamda Mobile Center','place':'Muhaisinah','state':'dubai','contact':'0500000006'},
          'vendor3':{'name':'Phone-X Mobiles','place':'Rashidiya','state':'dubai','contact':'0500000021'}},
        id: '4',
        imageurl: 'https://image.shutterstock.com/image-photo/closeup-photos-showing-process-tablet-260nw-271948160.jpg'),
  ];

  List<Companyitem> getdata(){
    return companydata;
  }
  Companyitem findbysection(String sectioname){
    return companydata.firstWhere((element) => element.section==sectioname);
  }
}
