import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/widgets/navigationdrawer.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key key}) : super(key: key);

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(CColor.mcolor),
        title: Text('My Profile',
          style: TextStyle(
              fontSize: 16
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/Max-R_Headshot (1).jpg'),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white
                    ),
                    color: Color(CColor.mcolor),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(
                      icon: Icon(Icons.camera_alt, size: 20,color: Colors.white,),
                      onPressed: (){}
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('Alex Smith',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Email: ',
                  style: TextStyle(
                      fontSize: 12
                  ),
                ),
                Text('alex@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12
                ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Phone: ',
                  style: TextStyle(
                      fontSize: 12
                  ),
                ),
                Text('978564123',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Role: ',
                  style: TextStyle(
                      fontSize: 12
                  ),
                ),
                Text('User',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
