import 'package:flutter/material.dart';
import 'package:gammaltechcourseproject/ui/startSMButtonScreen/startSMButtonScreen.dart';

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
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => StartSMButtonScreen(
                    URLuri: iconURL,
                  )),
        );
      },
      child: Image(
        image: AssetImage("assets/$iconAdd"),
      ),
    );
  }
}
