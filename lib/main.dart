import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/android_app.dart';
import 'service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await configureDependencies();
  runApp(AndroidApp());
}
