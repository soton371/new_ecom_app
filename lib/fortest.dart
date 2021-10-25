import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_ecom_app/controller/signincontroller.dart';

class ForTestScreen extends StatelessWidget {
  const ForTestScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SignInController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Zoom'),
      ),
      body: Center(
          child: Obx((){
            if(controller.googleAccount.value == null)
              return ElevatedButton(
                  onPressed: (){
                    controller.signIn();
                  },
                  child: Text('SignIn with google')
              );
            else
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: Image.network(controller.googleAccount.value?.photoUrl??'').image,
                      radius: 100,
                    ),
                    Text(controller.googleAccount.value?.displayName??''),
                    Text(controller.googleAccount.value?.email??''),
                    ElevatedButton(
                        onPressed: (){
                          controller.signOut();
                        },
                        child: Text('log out')
                    ),
                  ],
                ),
              );
          })
      ),
    );
  }
}

