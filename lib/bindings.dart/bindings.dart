import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/page_controller.dart';

class MyBindings extends Bindings{
  @override
  void dependencies() {
   Get.put(PagesController());
  }
  
}