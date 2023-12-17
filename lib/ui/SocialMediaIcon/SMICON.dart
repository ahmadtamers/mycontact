import 'package:flutter/material.dart';
import 'package:gammaltechcourseproject/ui/MyContactProvider/MyContactHistoryProvider.dart';
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
    return Consumer<MyContactHistoryProvider>(
      builder: (context, value, child) => InkWell(
        onTap: () {
          value.historyIcon = iconAdd;
          value.historyIconLink = Uri.parse(iconURL);
          value.notifyListeners();
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
      ),
    );
  }
}
