import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/user_view_model.dart';

class ChangeUserName extends StatelessWidget {
  const ChangeUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ElevatedButton(
      child: const Text("Change"),
      onPressed: () {
        UserViewModel userViewModel =
            Provider.of<UserViewModel>(context, listen: false);
        userViewModel.userName = "Toto";
      },
    ));
  }
}
