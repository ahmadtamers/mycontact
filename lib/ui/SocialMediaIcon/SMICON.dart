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
    return Consumer2<MyContactProvider, IconRadius>(
      builder: (context, value, value2, child) => InkWell(
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
          value2.iconRaduis == null
              ? {myRadius = value2.iconRaduis = 30}
              : {myRadius = value2.iconRaduis = null};
          value2.notifyListeners();
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
