import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

String? PlatformIconHistory;
Uri? PlatformLinkHistory;

class SMediaIcon extends StatelessWidget {
  String iconAdd;
  String iconURL;
  Function HistoryIconState;
  SMediaIcon({
    Key? key,
    required this.iconAdd,
    required this.iconURL,
    required this.HistoryIconState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        PlatformIconHistory = iconAdd;
        PlatformLinkHistory = Uri.parse(iconURL);
        HistoryIconState();
        launchUrl(Uri.parse(iconURL), mode: LaunchMode.externalApplication);
      },
      child: Image(
        image: AssetImage("assets/$iconAdd"),
      ),
    );
  }
}
