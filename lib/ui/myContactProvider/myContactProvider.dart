import 'dart:html';

import 'package:flutter/material.dart';

class MyContactProvider extends ChangeNotifier {
  String? _HistoryIcon;
  Uri? _HistoryIconLink;

  void setHistoryIcon(historyIconValue) {
    _HistoryIcon = historyIconValue;
  }

  void setHistoryIconLink(historyIconLinkValue) {
    _HistoryIconLink = Uri.parse(historyIconLinkValue);
  }

  String getHistoryIconValue() => _HistoryIcon ?? "";

  Uri getHistoryIconLinkValue() {
    return _HistoryIconLink ?? Uri.parse("");
  }

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}

class IconRadius extends ChangeNotifier {
  double? iconRaduis;

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
