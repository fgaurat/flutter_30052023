import 'package:flutter/material.dart';
import 'package:tp_mvvm/user.dart';

class UserViewModel extends ChangeNotifier {
  final User _user;

  UserViewModel(this._user);

  String get userName => _user.name;

  set userName(String name) {
    _user.name = name;
    notifyListeners();
  }
}
