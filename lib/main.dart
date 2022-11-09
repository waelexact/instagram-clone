import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instgram/pages/loading.dart';
import 'package:instgram/pages/menu.dart';
import 'package:instgram/pages/account.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/menu': (context) => Menu(),
      '/account': (context) => Account(),
    },
  ));
}


