import 'package:clean_architecture/application/app.dart';
import 'package:clean_architecture/core/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  runApp(const MyApp());
}
