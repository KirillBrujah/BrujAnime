import 'package:brujanime/utils/getit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';

void main() async {
  await dotenv.load(fileName: '.env');


  setupLocator();
  runApp(MyApp());
}
