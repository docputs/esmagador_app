import 'dart:io';

import 'package:flutter/material.dart';

import 'view/android/app.dart';
import 'view/ios/app.dart';

void main() => Platform.isIOS ? runApp(IOSApp()) : runApp(AndroidApp());
