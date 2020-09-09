import 'dart:io';

import 'package:flutter/material.dart';

import 'presentation/android/android_app.dart';
import 'presentation/ios/ios_app.dart';

void main() => Platform.isIOS ? runApp(IOSApp()) : runApp(AndroidApp());
