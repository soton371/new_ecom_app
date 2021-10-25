import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_ecom_app/controller/signincontroller.dart';
class ProScreen extends StatelessWidget {
  const ProScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SignInController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text("controller.googleAccount.value?.email??''"),
      ),
    );
  }
}
