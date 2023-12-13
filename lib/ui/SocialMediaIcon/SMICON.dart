import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SMediaIcon extends StatelessWidget {
  String iconAdd;
  String iconURL;
  SMediaIcon({
    Key? key,
    required this.iconAdd,
    required this.iconURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return ElevatedButton(
              onPressed: () {
                launchUrl(Uri.parse(iconURL));
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Start Social Media"),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            );
          },
        );
      },
      child: Image(
        image: AssetImage("assets/$iconAdd"),
      ),
    );
  }
}
