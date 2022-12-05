import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return Get.height;
  }
  static getScreenWidth(){
    return Get.width;
  }
  static getHeight(double pixels){
    double x=getScreenHeight()/pixels;//800/200=4
    return getScreenHeight()/x;//800/4
  }
  static getWidth(double pixels){
    double x=getScreenWidth()/pixels;//800/200=4
    return getScreenWidth()/x;//800/4
  }

}