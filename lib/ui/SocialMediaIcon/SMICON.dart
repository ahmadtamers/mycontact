import 'package:flutter/material.dart';
import 'package:gammaltechcourseproject/ui/myContactProvider/myContactProvider.dart';
import 'package:gammaltechcourseproject/ui/startSMButtonScreen/startSMButtonScreen.dart';
import 'package:provider/provider.dart';

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
    return Consumer<MyContactProvider>(
      builder: (context, value, child) => InkWell(
        onTap: () {
          value.setHistoryIcon(iconAdd);
          value.setHistoryIconLink(iconURL);
          value.notifyListeners();
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => StartSMButtonScreen(
                      URLuri: iconURL,
                    )),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image(
            image: AssetImage("assets/$iconAdd"),
          ),
        ),
      ),
    );
  }
}
