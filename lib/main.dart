import 'package:flutter/material.dart';
import 'package:packer/widget/packer_main_screen.dart';


final kShemeColor =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 76, 175, 158));

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true, colorScheme: kShemeColor),
    home: PackerMainScreen(),
  ));
}
