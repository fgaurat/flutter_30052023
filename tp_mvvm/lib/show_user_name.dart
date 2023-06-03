import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/user_view_model.dart';

class ShowUserName extends StatelessWidget {
  const ShowUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = Provider.of<UserViewModel>(context);
    return SafeArea(child: Text("userName : ${userViewModel.userName}"));
  }
}
