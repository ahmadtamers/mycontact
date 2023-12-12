import 'package:flutter/material.dart';

class IconAndUrl {
  String IconImgAdd;
  String IconImgUrl;
  IconAndUrl({required this.IconImgAdd, required this.IconImgUrl});
}

List<IconAndUrl> SMIconsList = [
  IconAndUrl(
      IconImgAdd: "fbIcon.png",
      IconImgUrl: "https://www.facebook.com/Routelearning/"),
  IconAndUrl(
      IconImgAdd: "iG.png",
      IconImgUrl: "https://www.instagram.com/routelearning/"),
  IconAndUrl(
      IconImgAdd: "waIcon.png", IconImgUrl: "https://wa.me/+201023639954"),
];
