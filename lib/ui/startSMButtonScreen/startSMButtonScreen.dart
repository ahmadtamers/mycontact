import 'dart:html';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSMButtonScreen extends StatelessWidget {
  String? URLuri;
  StartSMButtonScreen({Key? key, required this.URLuri}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            launchUrl(Uri.parse(URLuri!));
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Start Social Media"),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
        ),
      ),
    );
  }
}
