import 'package:flutter/material.dart';
import 'package:gammaltechcourseproject/ui/SMListContact/SMListContact.dart';
import 'package:gammaltechcourseproject/ui/SocialMediaIcon/SMICON.dart';

class Gridviewcontacts extends StatelessWidget {
  Gridviewcontacts({
    super.key,
    required this.SMIconsGridList,
  });

  List SMIconsGridList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 65),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: SMIconsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 60,
          crossAxisSpacing: 100,
        ),
        itemBuilder: (BuildContext, index) {
          return SMediaIcon(
            iconAdd: SMIconsGridList[index].IconImgAdd,
            iconURL: SMIconsGridList[index].IconImgUrl,
          );
        });
  }
}
