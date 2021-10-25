import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/front.dart';
import 'package:new_ecom_app/home.dart';

class NThanksScreen extends StatefulWidget {
  const NThanksScreen({Key key}) : super(key: key);

  @override
  _NThanksScreenState createState() => _NThanksScreenState();
}

class _NThanksScreenState extends State<NThanksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          //for upper section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    DottedBorder(
                      borderType: BorderType.Oval,
                      color: Color(CColor.mcolor),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(CColor.mcolor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.location_on,color: Colors.white),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey,thickness: 1,indent: 10,endIndent: 10,)),
                    DottedBorder(
                      borderType: BorderType.Oval,
                      color: Color(CColor.mcolor),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(CColor.mcolor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.payment,color: Colors.white),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey,thickness: 1,indent: 10,endIndent: 10,)),
                    DottedBorder(
                      borderType: BorderType.Oval,
                      color: Color(CColor.mcolor),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(CColor.mcolor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.done,color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Address'),
                    Text('Payment'),
                    Text('Confirm'),
                  ],
                ),
              ],
            ),
          ),
          //for down section
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Thanks your order',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(CColor.mcolor)
                      ),
                      ),
                      SizedBox(height: 15,),
                      Text('Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(child: Text('Track Your Order',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(CColor.mcolor)
                      ),)),
                      SizedBox(height: 25,),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                          },
                          child: Text('Back to Home',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(CColor.mcolor),
                        ),
                      )
                    ],
                  ),
                ),
                //for image
                Expanded(child: Image(image: AssetImage('images/postman-delivers-surprise-gift-4095632-3408612.png')))
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
