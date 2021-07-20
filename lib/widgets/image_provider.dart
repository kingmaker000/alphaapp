import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspath;
import '../user_credentials/image_class.dart';

class Imageinput extends StatefulWidget {
  //const Imageinput({Key? key}) : super(key: key);
  //final Function onSelectedimage;
  //File _storedimage;
  UserItem userdata;

  Imageinput(this.userdata);

  @override
  _ImageinputState createState() => _ImageinputState();
}

class _ImageinputState extends State<Imageinput> {
  //Image emptyimage=NetworkImage('https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png');

  Future<void> _takePicture() async {
    final picker = ImagePicker();
    final imageFile = await picker.getImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
    //final imageFile=await ImagePicker().getImage(source: ImageSource.gallery,maxWidth: 600,maxHeight: 600);
    if (imageFile == null) {
      return;
    }
    setState(() {
      widget.userdata.profileImage= File(imageFile.path);
    });
    final appdir = await syspath.getApplicationDocumentsDirectory();
    final filename = path.basename(imageFile.path);
    final savedimage = await widget.userdata.profileImage!.copy('${appdir.path}/$filename');
    widget.userdata.updateImage(savedimage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.grey,),
                borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
                child: widget.userdata.profileImage==null? Image.network('https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png',fit: BoxFit.cover,width: double.infinity,)
                    : Image.file(
                  widget.userdata.profileImage!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
            ),
          ),
          /*Container(
            width: 150,
            height: 100,
            decoration:
            BoxDecoration(border: Border.all(width: 2, color: Colors.grey)),
            child: _storedimage != null
                ? Image.file(
              _storedimage,
              fit: BoxFit.cover,
              width: double.infinity,
            )
                : Text(
              'No image taken',
              textAlign: TextAlign.center,
            ),
            alignment: Alignment.center,
          ),*/
          // SizedBox(
          //   width: 10,
          // ),
         TextButton(child: Text('Change photo',style: TextStyle(color: Colors.black87,fontSize: 18),),
                  onPressed: () {
                   setState(() {
                     _takePicture().catchError((error) {
                       print(error.toString());
                     });
                   });
                  }
                  )
        ],
      ),
    );
  }
}
