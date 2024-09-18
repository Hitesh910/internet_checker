library internet_checker;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/single_child_widget.dart';
part 'provider/backend/internet_checker_provider.dart';
part 'getx/backend/internet_checker_controller.dart';
part 'getx/widget/internet_checker_app.dart';
part 'provider/widget/internet_checker_app.dart';

class InternetChecker
{
  static InternetController internetController = Get.put(InternetController());
}
