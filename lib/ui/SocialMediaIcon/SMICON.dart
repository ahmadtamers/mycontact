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
        launchUrl(Uri.parse(iconURL), mode: LaunchMode.externalApplication);
      },
      child: Image(
        image: AssetImage("assets/$iconAdd"),
      ),
    );
  }
}
