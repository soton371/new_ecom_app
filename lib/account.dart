import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/myprofile.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  var sign_in = true;

  var email = TextEditingController();
  var password = TextEditingController();
  var phone = TextEditingController();
  var name = TextEditingController();
  var user = TextEditingController();

  var is_check = false;

  signInScreen(){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/15,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    spreadRadius: 0.5,
                    blurRadius: 5
                  )
                ]
              ),
              child: Column(
                children: [
                  Text('Sign In',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,color: Color(CColor.mcolor)
                  ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xfff1f1f1),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: TextFormField(
                      cursorColor: Color(CColor.mcolor),
                      controller: email,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined,color: Color(CColor.mcolor),),
                          hintText: 'Email',
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xfff1f1f1)
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: .5,
                                  color: Color(CColor.mcolor)
                              )
                          )
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xfff1f1f1),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: TextFormField(
                      cursorColor: Color(CColor.mcolor),
                      controller: password,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.compass_calibration_outlined,color: Color(CColor.mcolor),),
                          hintText: 'Password',
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xfff1f1f1)
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: .5,
                                  color: Color(CColor.mcolor)
                              )
                          )
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Checkbox(value: is_check, onChanged: (value){
                        setState(() {
                          is_check = true;
                        });
                      }),
                      Text("Remember Me")
                    ],
                  ),
                  //start button section
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));
                      },
                      child: Text('Log In Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(CColor.mcolor)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have An Account?"),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      sign_in = false;
                    });
                  },
                  child: Text(" Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(CColor.mcolor)
                  ),
                  ),
                ),
              ],
            ),
            //SizedBox(height: MediaQuery.of(context).size.height/10,),
          ],
        ),
      ),
    );
  }

  signUpScreen(){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/15,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        spreadRadius: 0.5,
                        blurRadius: 5
                    )
                  ]
              ),
              child: Column(
                children: [
                  Text('Sign Up',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,color: Color(CColor.mcolor)
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xfff1f1f1),
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: TextFormField(
                          cursorColor: Color(CColor.mcolor),
                          controller: name,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_outline,color: Color(CColor.mcolor),),
                              hintText: 'Name',
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xfff1f1f1)
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: .5,
                                      color: Color(CColor.mcolor)
                                  )
                              )
                          ),
                          keyboardType: TextInputType.name,
                        ),
                      ),),
                      SizedBox(width: 10,),
                      Expanded(child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xfff1f1f1),
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: TextFormField(
                          cursorColor: Color(CColor.mcolor),
                          controller: user,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.verified_user_outlined,color: Color(CColor.mcolor),),
                              hintText: 'User',
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xfff1f1f1)
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: .5,
                                      color: Color(CColor.mcolor)
                                  )
                              )
                          ),
                          keyboardType: TextInputType.name,
                        ),
                      ),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xfff1f1f1),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: TextFormField(
                      cursorColor: Color(CColor.mcolor),
                      controller: phone,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_outlined,color: Color(CColor.mcolor),),
                          hintText: 'Phone No',
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xfff1f1f1)
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: .5,
                                  color: Color(CColor.mcolor)
                              )
                          )
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xfff1f1f1),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: TextFormField(
                      cursorColor: Color(CColor.mcolor),
                      controller: email,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined,color: Color(CColor.mcolor),),
                          hintText: 'Email',
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xfff1f1f1)
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: .5,
                                  color: Color(CColor.mcolor)
                              )
                          )
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xfff1f1f1),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: TextFormField(
                      cursorColor: Color(CColor.mcolor),
                      controller: password,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.compass_calibration_outlined,color: Color(CColor.mcolor),),
                          hintText: 'Password',
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xfff1f1f1)
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: .5,
                                  color: Color(CColor.mcolor)
                              )
                          )
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  //start button section
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));
                      },
                      child: Text('Sign Up Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(CColor.mcolor)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have An Account?"),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      sign_in = true;
                    });
                  },
                  child: Text(" Sign in",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(CColor.mcolor)
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(CColor.mcolor),
        leading: Icon(Icons.arrow_back),
        title: Text('Account',
          style: TextStyle(
              fontSize: 16
          ),
        ),
      ),
      body: sign_in?signInScreen():signUpScreen(),
    );
  }
}
