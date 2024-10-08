library internet_detector;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/single_child_widget.dart';
part 'provider/backend/internet_detector_provider.dart';
part 'getx/backend/internet_detector_controller.dart';
part 'getx/widget/internet_detector_app.dart';
part 'provider/widget/internet_detector_app.dart';

class InternetDetector
{
  static InternetController internetController = Get.put(InternetController());
}
