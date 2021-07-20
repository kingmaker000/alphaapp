import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';


class UserItem {
  File? profileImage;

  void updateImage(File newimage){
      this.profileImage=newimage;
  }
}