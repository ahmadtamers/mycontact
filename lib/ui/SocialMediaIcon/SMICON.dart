import 'package:flutter/material.dart';
import 'package:gammaltechcourseproject/ui/myContactProvider/myContactProvider.dart';
import 'package:gammaltechcourseproject/ui/startSMButtonScreen/startSMButtonScreen.dart';
import 'package:provider/provider.dart';

class SMediaIcon extends StatelessWidget {
  String iconAdd;
  String iconURL;
  double? myRadius;
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
        onDoubleTap: () {
          value.iconRaduis == 10
              ? {myRadius = value.iconRaduis = 30}
              : {myRadius = value.iconRaduis = 10};
          value.notifyListeners();
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(myRadius ?? 10),
          child: Image(
            image: AssetImage("assets/$iconAdd"),
          ),
        ),
      ),
    );
  }
}
