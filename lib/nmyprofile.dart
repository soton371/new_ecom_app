import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class NMyProfileScreen extends StatefulWidget {
  const NMyProfileScreen({Key key}) : super(key: key);

  @override
  _NMyProfileScreenState createState() => _NMyProfileScreenState();
}

class _NMyProfileScreenState extends State<NMyProfileScreen> {

  File image;

  Future pickImage() async{
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image == null) return;
      final image_temp = File(image.path);
      setState(() {
        this.image = image_temp;
        print('click');
      });
    }on PlatformException catch (e){
      print('error for image pick: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(CColor.nbgcolor),
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=>Navigator.pop(context),color: Color(CColor.mcolor)),
        title: Text("My Profile",
          style: TextStyle(
              color: Color(CColor.mcolor)
          ),
        ),
        bottom: PreferredSize(
            child: Column(
              children: [
                Container(
                    alignment: Alignment.bottomRight,
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: image != null ? FileImage(image,) : AssetImage('images/Max-R_Headshot (1).jpg'),
                            fit: BoxFit.cover
                        ),
                        border: Border.all(color: Color(CColor.mcolor),width: 2)
                    ),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Color(CColor.mcolor),width: 2)
                      ),
                      child: IconButton(
                        color: Color(CColor.mcolor),
                        iconSize: 20,
                        icon: Icon(Icons.camera_alt),
                        onPressed: (){
                          pickImage();
                        },
                      ),
                    )
                ),
                SizedBox(height: 50,)
              ],
            ),
            preferredSize: Size.fromHeight(200)
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(CColor.nbgcolor),
                    Color(CColor.mcolor),
                  ]
              ),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name',style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              ),),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                child: TextField(
                  style: TextStyle(
                      fontSize: 12
                  ),
                  cursorColor: Color(CColor.mcolor),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(.2))),
                      hintText: 'Alex Smith',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(CColor.mcolor),
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text('Email',style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              ),),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                child: TextField(
                  style: TextStyle(
                      fontSize: 12
                  ),
                  cursorColor: Color(CColor.mcolor),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(.2))),
                      hintText: 'smith@gmail.com',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(CColor.mcolor),
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text('Shipping Address',style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              ),),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                child: TextField(
                  style: TextStyle(
                      fontSize: 12
                  ),
                  cursorColor: Color(CColor.mcolor),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(.2))),
                      hintText: 'Gulshan-1, Dhaka',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(CColor.mcolor),
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text('Phone Number',
                style: TextStyle(
                    fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                child: TextField(
                  style: TextStyle(
                      fontSize: 12
                  ),
                  cursorColor: Color(CColor.mcolor),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(.2))),
                      hintText: '+8801554698745',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(CColor.mcolor),
                      )
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Center(
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Update Profile",
                    style: TextStyle(
                      color: Color(CColor.mcolor),
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(CColor.mcolor).withOpacity(.2),
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
