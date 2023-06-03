import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/change_user_name.dart';
import 'package:tp_mvvm/show_user_name.dart';
import 'package:tp_mvvm/user.dart';
import 'package:tp_mvvm/user_view_model.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserViewModel>(
      create: (context) {
        User u = User('Fred');
        UserViewModel uvm = UserViewModel(u);
        return uvm;
      },
      child: const Column(children: [ShowUserName(), ChangeUserName()]),
    );
  }
}
