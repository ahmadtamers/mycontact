import 'package:flutter/material.dart';
import 'package:gammaltechcourseproject/ui/myContactProvider/myContactProvider.dart';
import 'package:provider/provider.dart';
import 'ui/mycontact/mycontact.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyContactProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyContact(),
      ),
    );
  }
}
